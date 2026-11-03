# Contribution Guide

**Dymbia** team conventions for contributing to the **SumaqAgro** report (Docs-as-Code).

## Repository Structure

| Path | Contents |
| :--- | :--- |
| `report/` | Report content in Markdown (front matter, chapters, bibliography, annexes, and images). |
| `pandoc/` | PDF export pipeline: configuration, metadata, Lua filter, LaTeX preamble, and build scripts. |

### Naming Conventions

- Report files use a **numeric prefix** and **kebab-case**: `01-09` for front matter, `10-89` for chapters, and `99` for the bibliography (for example, `20-chapter-2-requirements.md`).
- Images belong in `report/assets/img/chapter-N/<topic>/`, with lowercase, kebab-case names and **no spaces**.
- Image paths are **relative to `report/`**: `![Alternative text](assets/img/chapter-4/c4/c4-container-diagram.png)`.
- Each new chapter or file must be added to `input-files` in `pandoc/build.yaml` (this order determines the PDF order).

## Branching Workflow (GitFlow)

| Branch | Purpose |
| :--- | :--- |
| `main` | Official deliverables (AV1, TB1, AV2, TB2, TF). Only receives merges from `release/*` and `hotfix/*`. |
| `develop` | Integration of chapters in progress. |
| `feature/<description>` | A section or improvement. Branches from `develop` and merges back into `develop` through a Pull Request. |
| `release/vX.Y.Z` | Deliverable finalization: version history, metadata, and final PDF. |
| `hotfix/vX.Y.Z` | Urgent fix for a deliverable on `main`. |

```bash
git switch develop && git pull
git switch -c feature/tb1-chapter-3-user-stories
# ...changes...
git push -u origin feature/tb1-chapter-3-user-stories   # then open a PR targeting develop
```

Finalizing a deliverable:

1. `git switch -c release/v1.1.0 develop`
2. Update `CHANGELOG.md` and `report/front-matter/02-version-history.md`, and generate the PDF.
3. Merge into `main` with `--no-ff`, create the `v1.1.0` tag, and merge back into `develop`.

## Commits (Conventional Commits 1.0.0)

Format: `<type>(<scope>): <lowercase description in the imperative mood>`

| Type | Purpose |
| :--- | :--- |
| `docs` | Report content. |
| `fix` | Error corrections (paths, formatting, data). |
| `build` | Changes to `pandoc/`. |
| `refactor` | Reorganization without changing the content. |
| `chore` | Repository maintenance. |

Common scopes: `front-matter`, `chapter-1` … `chapter-5`, `conclusions`, `bibliography`, `annexes`, `assets`, `pandoc`.

Example: `docs(chapter-3): add user stories for account registration`

## Versioning (SemVer 2.0.0)

- **MAJOR**: a report structure change that is incompatible with the previous version.
- **MINOR**: a new deliverable or section (`v1.1.0` = TB1).
- **PATCH**: corrections to a deliverable (`v1.0.1`).

## Compiling the PDF

Requirements: **Pandoc 3.x** and **XeLaTeX** (MiKTeX or TeX Live).

```bash
# Linux / macOS / WSL (from the repository root)
make -C pandoc pdf MILESTONE=tb1
make -C pandoc pdf MILESTONE=tb1 FONTS=linux   # without Arial/Consolas
```

```powershell
# Windows (PowerShell)
.\pandoc\build.ps1 -Milestone tb1
```

The PDF is generated in `pandoc/build/` (ignored by Git) and attached to the GitHub Release for each tag.

## Pull Requests

- Use a title in Conventional Commit format.
- Verify that the PDF compiles without errors before requesting a review.
- Obtain at least one approval from another team member before merging.
