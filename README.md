# 00_Setup

Conventions, tooling, and onboarding scripts for the **azev-alurad** GitHub organization.

This repo is the entry point for any new machine or fresh checkout — clone it first, then run `sync-repos.sh` to pull every other repo into a consistent local layout.

---

## Contents

| File | Purpose |
|:-----|:--------|
| [`NAMING.md`](./NAMING.md) | Repository naming conventions (prefixes, roles, suffixes) and the decision guide for naming new repos |
| [`sync-repos.sh`](./sync-repos.sh) | Clones (or pulls) every azev-alurad repo into a domain-grouped folder structure |
| [`.claude/settings.json`](./.claude/settings.json) | Claude Code settings shared across the repo |

---

## Quick start

```bash
gh repo clone azev-alurad/00_Setup ~/dev/azev-alurad/00_Setup
cd ~/dev/azev-alurad/00_Setup
./sync-repos.sh
```

That gives you:

```
~/dev/azev-alurad/
├── 00_Setup/
├── azev/        # azev-* repos
└── other/       # Pre-convention repos
```

---

## `sync-repos.sh`

```bash
./sync-repos.sh [base_dir]
```

- **`base_dir`** — where to clone repos. Defaults to `/home/reyemb/dev/azev-alurad`.
- Existing checkouts are pulled (`git pull --quiet`); missing ones are cloned via `gh repo clone`.
- Domain folder is derived from the repo name prefix (see [`NAMING.md`](./NAMING.md)).

### Ignored repos

The `IGNORE_REPOS` array at the top of the script skips repositories that were created by accident on the organization and will be removed later. Edit the array to add or remove entries as the inventory changes.

### Requirements

- [`gh`](https://cli.github.com/) authenticated against an account with access to the `azev-alurad` org
- `git`
- Bash

---

## Adding a new repo

1. Pick a name that follows [`NAMING.md`](./NAMING.md) — `[prefix]-[role]-[name]`.
2. Create it on GitHub with a description and topics (see the guidelines in `NAMING.md`).
3. Re-run `./sync-repos.sh` — it will pick up the new repo and place it under the right domain folder.
