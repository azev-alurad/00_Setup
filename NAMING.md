# Repository Naming Conventions

This document defines the naming standards for all repositories in the **azev-alurad** organization.

---

## Naming Pattern

All repositories follow the pattern: **`[prefix]-[role]-[name]`**

| Component | Description | Examples |
|:----------|:------------|:---------|
| **prefix** | Domain/project identifier | `azev-` |
| **role** | Type/function of the repo | `web`, `api`, `component` |
| **name** | Descriptive identifier | `astro`, `react`, `mapbox-events` |

---

## Domain Prefixes

| Prefix | Domain | Description |
|:-------|:-------|:------------|
| **`azev-`** | azev-alurad | Core azev-alurad projects |

Add new prefixes here as additional product domains are introduced.

---

## Role Identifiers

| Role | Description | When to Use |
|:-----|:------------|:------------|
| **`web`** | Frontend/UI | React, Vue, Astro, or other web frontends |
| **`api`** | Backend API | FastAPI, Express, or other backend services |
| **`component`** | UI Component | Reusable UI components |
| **`collection`** | API Collection | Bruno/Postman API collections |
| **`nb`** | Notebook | Jupyter notebooks for analysis |
| **`template`** | Template | Starter templates and boilerplates |

---

## Suffixes

| Suffix | When to Use |
|:-------|:------------|
| **`-legacy`** | Deprecated or superseded repositories |
| **`-final`** | Final/stable version of a project |

---

## Description Guidelines

Every repository **must** have a description on GitHub.

### Rules

1. **Be specific** - Mention actual technologies, not just "frontend" or "backend"
2. **Keep it concise** - Aim for 1-2 sentences (max 350 characters)
3. **Include context** - Mention the project/product name
4. **List key features** - What makes this repo unique
5. **No redundancy** - Don't repeat info already in the repo name

---

## Topic Guidelines

Every repository **must** have topics on GitHub for discoverability.

### Required Topics

| Category | Examples |
|:---------|:---------|
| **Language** | `python`, `typescript`, `csharp`, `javascript` |
| **Purpose** | `frontend`, `backend`, `api`, `component` |
| **Framework** | `react`, `vue`, `astro`, `fastapi` |
| **Domain** | Match the prefix domain |

### Rules

1. **Always include language** - Primary programming language(s)
2. **Always include purpose** - `frontend`, `backend`, `api`, etc.
3. **Add framework** - If using React, FastAPI, etc.
4. **Add domain** - Match the prefix domain
5. **Keep it lowercase** - All topics must be lowercase
6. **Use hyphens** - Multi-word topics use hyphens

---

## Current Repositories

### azev-alurad
| Repository | Description |
|:-----------|:------------|
| `azev-astro-frontend` | Astro frontend (consider rename to `azev-web-astro`) |

---

## Examples

### Creating a new web project
```
azev-web-[framework]
```
Example: `azev-web-astro`, `azev-web-react`

### Creating an API
```
azev-api-[framework]
```
Example: `azev-api-fastapi`

### Creating an API collection
```
azev-collection-[name]
```
Example: `azev-collection-bruno`

---

## Decision Guide

```
Is it for azev-alurad core?
├── Yes → azev-[role]-[name]
└── No  → introduce a new prefix and add it to the table above
```

---

## Migration Notes

The following repositories should be renamed to match the naming convention:

| Current Name | Suggested Name |
|:-------------|:---------------|
| `azev-astro-frontend` | `azev-web-astro` |
