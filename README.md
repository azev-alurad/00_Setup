# azev-alurad Setup

Setup and sync scripts for the **azev-alurad** organization repositories.

---

## Quick Start

Clone all repositories from the organization:

```bash
./sync-repos.sh
```

Or specify a custom directory:

```bash
./sync-repos.sh /path/to/custom/directory
```

---

## Scripts

| Script | Description |
|:-------|:------------|
| `sync-repos.sh` | Clones or pulls all repositories from the azev-alurad organization |

---

## Current Repositories

| Repository | Description |
|:-----------|:------------|
| `00_Setup` | Setup and sync scripts for azev-alurad organization |

---

## Usage

1. Clone this repository:
   ```bash
   gh repo clone azev-alurad/00_Setup
   ```

2. Run the sync script:
   ```bash
   cd 00_Setup
   ./sync-repos.sh
   ```

The script will clone any new repositories and pull latest changes for existing ones.
