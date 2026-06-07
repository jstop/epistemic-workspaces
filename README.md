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

From the workspaces directory:

```sh
for d in */; do d="${d%%/}"
  [ -d "$d/.git" ] && git -C "$d" bundle create <backup>/bundles/$d.bundle --all
  rsync -a --delete --exclude .git "$d/" <backup>/snapshots/$d/
done
```
