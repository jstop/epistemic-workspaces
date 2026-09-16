#!/bin/zsh
# Archive the SOURCE MATERIAL of the epistemic pipeline off-machine.
#
# The devops rule (2026-09-16): everything derived — the living library's
# canonical.db, its projections, recall's derivation edges, generated argument
# graphs — is a build artifact and can be rebuilt. What cannot be rebuilt is the
# raw input and the human acts on it. That is what this archives, to a private,
# versioned, encrypted S3 bucket in Josh's account:
#
#   claude-exports/<date>/   every Anthropic data export found on disk, by date
#   recall/recall.db         recall's db — holds hand-made attestations (human acts)
#   claude-code/projects/    ~/.claude/projects transcripts (the continuous source)
#   library-builds/current/  the library's canonical.db + evidence_store — DERIVED,
#                            kept as cheap insurance, never as the source of truth
#
# Workspaces are archived separately (backup.sh → GitHub). A manifest of what
# was archived (path, size, sha256, key) is committed to this repo so the
# archive's contents are themselves under version control.
set -euo pipefail
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"

BUCKET="${EPIST_SOURCES_BUCKET:-epistemic-sources-523888557587}"
DEST="${EPIST_BACKUP_REPO:-$HOME/workspace/epistemic/workspaces-backup}"
LIB="${EPIST_MEMORY_PATH:-$HOME/workspace/epistemic/memory}"
LOG="$HOME/Library/Logs/epistemic-archive.log"
MANIFEST="$DEST/sources/MANIFEST.tsv"
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT
mkdir -p "$(dirname "$LOG")" "$DEST/sources"
log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" | tee -a "$LOG"; }

# kind  s3-prefix  local-path  (a directory is synced; a file is placed under the prefix)
typeset -a ITEMS
ITEMS=(
  "source|claude-exports/2025-07-14|$HOME/workspace/Claude_Data/data-2025-07-14-19-34-21-batch-0000/conversations.json"
  "source|claude-exports/2025-07-24|$HOME/workspace/Claude_Data/conversations/conversations.json"
  "source|claude-exports/2025-08-18|$HOME/workspace/obsidian/ClaudeConversations/conversations.json"
  "source|claude-exports/2026-03-02|$HOME/Documents/claude-data-export-2026-03/data-2026-03-02-02-24-47-batch-0000.zip"
  "source|claude-exports/2026-03-02|$HOME/Documents/claude-data-export-2026-03/claude_export/conversations.json"
  "source|claude-exports/2026-04-20|$HOME/workspace/recall/input"
  "human-input|recall|$HOME/.recall/recall.db"
  "source|claude-code/projects|$HOME/.claude/projects"
)

# The library build: a consistent sqlite copy + the content-addressed evidence store.
if [[ -f "$LIB/canonical.db" ]]; then
  mkdir -p "$STAGE/library"
  sqlite3 "$LIB/canonical.db" ".backup '$STAGE/library/canonical.db'"
  ITEMS+=("derived|library-builds/current|$STAGE/library/canonical.db")
  ITEMS+=("derived|library-builds/current/evidence_store|$LIB/evidence_store")
fi

log "archive start -> s3://$BUCKET"
[[ -f "$MANIFEST" ]] || print -r -- "archived_at\tkind\ts3_key\tbytes\tsha256\tlocal_path" > "$MANIFEST"
now="$(date -u '+%Y-%m-%dT%H:%M:%SZ')"
uploaded=0
for item in "${ITEMS[@]}"; do
  kind="${item%%|*}"; rest="${item#*|}"; prefix="${rest%%|*}"; src="${rest#*|}"
  if [[ -d "$src" ]]; then
    out="$(aws s3 sync "$src" "s3://$BUCKET/$prefix/" --only-show-errors --exclude '.DS_Store' --exclude '*/__pycache__/*' 2>&1)" || { log "FAILED sync $src: $out"; continue; }
    files=$(find "$src" -type f ! -name .DS_Store | wc -l | tr -d ' ')
    bytes=$(du -sk "$src" | cut -f1)
    print -r -- "$now\t$kind\t$prefix/\t$((bytes*1024))\t(dir: $files files)\t$src" >> "$MANIFEST"
    log "synced dir $prefix/ ($files files)"
  elif [[ -f "$src" ]]; then
    name="${src##*/}"
    # sync the single file so an unchanged file is not re-uploaded
    out="$(aws s3 sync "$(dirname "$src")" "s3://$BUCKET/$prefix/" --exclude '*' --include "$name" --only-show-errors 2>&1)" || { log "FAILED $src: $out"; continue; }
    bytes=$(stat -f %z "$src")
    # sha256 is cached in the manifest by (path, bytes) so big files hash once
    sha="$(awk -F'\t' -v p="$src" -v b="$bytes" '$6==p && $4==b && $5 !~ /^\(/ {s=$5} END{print s}' "$MANIFEST")"
    [[ -n "$sha" ]] || sha="$(shasum -a 256 "$src" | cut -d' ' -f1)"
    print -r -- "$now\t$kind\t$prefix/$name\t$bytes\t$sha\t$src" >> "$MANIFEST"
    log "archived $prefix/$name ($bytes bytes)"
  else
    log "missing (skipped): $src"
  fi
  uploaded=$((uploaded+1))
done

cd "$DEST"
git add -A sources
if git diff --cached --quiet; then
  log "manifest unchanged"
else
  git commit -q -m "[archive] $now: $uploaded items to s3://$BUCKET"
  git push -q origin HEAD 2>>"$LOG" && log "manifest pushed" || log "MANIFEST COMMITTED BUT PUSH FAILED"
fi
log "archive done"
