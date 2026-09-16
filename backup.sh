#!/bin/zsh
# Back up the epistemic-workbench workspaces off-machine.
#
# The workspaces are the one thing that must not be lost. Each is its own git
# repo (history) plus a working tree (which may hold uncommitted edits and
# ingestion proposals). This script keeps BOTH in the private backup repo
# jstop/epistemic-workspaces:
#   bundles/<name>.bundle   full git history (all branches), refreshed only
#                           when the workspace's refs changed
#   snapshots/<name>/       working-tree copy incl. uncommitted files
# then commits and pushes the backup repo. Deleted workspaces are NOT removed
# from the backup — deletion is one of the things this protects against.
#
# Usage: backup-workspaces.sh [--with-library]
#   --with-library  also copy the living library's canonical.db and
#                   evidence_store into library/ (opt-in; off by default)
set -euo pipefail
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"

SRC="${EPIST_WORKSPACES:-$HOME/workspace/epistemic/workspaces}"
DEST="${EPIST_BACKUP_REPO:-$HOME/workspace/epistemic/workspaces-backup}"
LIB="${EPIST_MEMORY_PATH:-$HOME/workspace/epistemic/memory}"
LOG="$HOME/Library/Logs/epistemic-backup.log"
WITH_LIBRARY=0
[[ "${1:-}" == "--with-library" ]] && WITH_LIBRARY=1

mkdir -p "$(dirname "$LOG")" "$DEST/bundles" "$DEST/snapshots"
log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" | tee -a "$LOG"; }

log "backup start: $SRC -> $DEST"
n=0; refreshed=0
for d in "$SRC"/*/; do
  name="${d%/}"; name="${name##*/}"
  [[ "$name" == .* ]] && continue
  n=$((n+1))
  if [[ -d "$d/.git" ]]; then
    refs="$(git -C "$d" for-each-ref --format='%(refname) %(objectname)' | sort)"
    stamp="$DEST/bundles/$name.refs"
    if [[ ! -f "$stamp" || "$(cat "$stamp")" != "$refs" ]]; then
      git -C "$d" bundle create "$DEST/bundles/$name.bundle" --all >/dev/null 2>&1
      print -r -- "$refs" > "$stamp"
      refreshed=$((refreshed+1))
    fi
  fi
  rsync -a --delete --exclude .git --exclude __pycache__ --exclude .DS_Store "$d" "$DEST/snapshots/$name/"
done

if (( WITH_LIBRARY )); then
  mkdir -p "$DEST/library"
  if [[ -f "$LIB/canonical.db" ]]; then
    # consistent copy of a live sqlite file
    sqlite3 "$LIB/canonical.db" ".backup '$DEST/library/canonical.db'"
    rsync -a --delete "$LIB/evidence_store/" "$DEST/library/evidence_store/"
    log "library copied (canonical.db + evidence_store)"
  fi
fi

cd "$DEST"
git add -A
if git diff --cached --quiet; then
  log "no changes ($n workspaces, 0 bundles refreshed)"
else
  msg="[backup] $(date '+%Y-%m-%d %H:%M'): $n workspaces, $refreshed bundles refreshed"
  git commit -q -m "$msg"
  if git push -q origin HEAD 2>>"$LOG"; then
    log "pushed: $msg"
  else
    log "COMMITTED BUT PUSH FAILED: $msg (will retry next run)"
    exit 1
  fi
fi
log "backup done"
