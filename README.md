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
