# epistemic-workspaces (backup)

Offsite backup of the epistemic-workbench research workspaces from
`EPIST_WORKSPACES` (the data directory the workbench MCP server operates on).
These are gitignored by the [epistemic-workbench](https://github.com/jstop/epistemic-workbench)
code repo, so this repo is their only off-machine copy.

- `snapshots/<name>/` — browsable working-tree copy of each workspace
  (claims, arguments, evidence, thesis, etc.), including any uncommitted edits
- `bundles/<name>.bundle` — the workspace's full git history (35 of 38
  workspaces are git repos; `demo-workspace`, `epistemic-wb`, and
  `my-workspace` are snapshot-only)

## Restore a workspace with history

```sh
git clone bundles/<name>.bundle <name>
```

## Refresh this backup

`backup.sh` (in this repo) refreshes bundles whose refs changed, re-syncs every
snapshot (including uncommitted files and ingestion proposals), commits, and
pushes. It never removes a workspace from the backup — deletion is one of the
things it protects against. Log: `~/Library/Logs/epistemic-backup.log`.

- By hand: `./backup.sh` here, or `make backup` in the workbench repo.
- Scheduled: `~/Library/LaunchAgents/com.jstop.epistemic-backup.plist` runs it
  at 09:15 and 21:15 daily (`launchctl kickstart gui/$UID/com.jstop.epistemic-backup`
  to run it now).
- `./backup.sh --with-library` additionally copies the living library's
  `canonical.db` (consistent sqlite backup) and `evidence_store/` into
  `library/`. Off by default: as of 2026-09-16 the library is treated as an
  unvalidated test branch, and the workspaces are the asset that must not be lost.

`bundles/<name>.refs` records the refs each bundle was built from, so an
unchanged workspace produces no commit.

## Source archive (the devops rule)

Everything derived — the living library's `canonical.db`, its projections,
recall's derivation edges, generated argument graphs — is a build artifact.
What cannot be rebuilt is the raw input and the human acts on it. `archive-sources.sh`
copies those to a private, versioned, encrypted S3 bucket in Josh's account
(`s3://epistemic-sources-523888557587`) and commits a manifest here
(`sources/MANIFEST.tsv`: when, kind, key, bytes, sha256, local path).

| prefix | what | kind |
|---|---|---|
| `claude-exports/<date>/` | every Anthropic data export found on disk, by export date | source |
| `recall/recall.db` | recall's database — holds hand-made attestations | human input |
| `claude-code/projects/` | `~/.claude/projects` transcripts, the continuous source | source |
| `library-builds/current/` | the library's `canonical.db` (consistent sqlite copy) + `evidence_store/` | derived, cheap insurance |

- By hand: `./archive-sources.sh`. Scheduled: `~/Library/LaunchAgents/com.jstop.epistemic-archive.plist`
  at 21:30 daily. Log: `~/Library/Logs/epistemic-archive.log`.
- Uploads use `aws s3 sync`, so unchanged files are not re-sent; the bucket is
  versioned, so an overwritten file's earlier versions remain.
- Not yet archived: a clean export of the human acts inside the library's log
  (verifications, restatements, acceptances). They are in the library build
  copy, but cannot be separated from machine writes until the pre-actor
  attribution is corrected.

> **Moved (2026-09-17):** `backup.sh` and `archive-sources.sh` now live in the
> private platform repo `jstop/epistemic-platform` (`ops/backup.sh`,
> `ops/archive.sh`), run through `ops/run-job.sh` with a status file and a
> failure notification, and read every path from `config/episteme.env`.
