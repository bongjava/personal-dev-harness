# Personal Development Harness

This repository is the personal development harness. It stores project creation policy, reusable Codex skills, GitHub workflow defaults, and examples. It does not store the design system source.

## Responsibility Boundaries

| Area | Owns | Does Not Own |
| --- | --- | --- |
| `personal-dev-harness` | Common project policy, quality baseline, skill source, example manifests | Design token source, app-specific feature code, live project lockfiles |
| `skills/my-project` | New project creation flow, stack selection, design system dependency wiring | GitHub publishing policy, token values, UI component implementation |
| `skills/my-github` | Branch, PR, release, and repository hygiene conventions | App scaffolding, design token authoring, package APIs |
| `my-design-system` | Design Tokens source of truth, generated platform packages, semver releases | Harness policy, project-specific UI decisions |

## Repository Layout

```text
personal-dev-harness/
|-- README.md
|-- core/
|   |-- harness.yaml
|   `-- quality.md
|-- skills/
|   |-- my-project/
|   `-- my-github/
|-- templates/
|   `-- project-manifests/
`-- examples/
    |-- next-app/
    |-- flutter-app/
    |-- compose-app/
    `-- swiftui-app/
```

## Design System Policy

The design system lives in a separate Git repository/package named `my-design-system`.

- Design Tokens are the source of truth in `my-design-system/tokens`.
- Stable releases use semver tags such as `v1.0.0`.
- Platform packages are generated/released from the same token version.
- Projects depend on exact package versions, not floating ranges.
- The harness may reference package names and examples, but it must not vendor the token source.

## Install Skills Locally

To make Codex discover the harness skills, copy them into your Codex skills directory:

```bash
mkdir -p ~/.codex/skills
cp -R skills/my-project ~/.codex/skills/my-project
cp -R skills/my-github ~/.codex/skills/my-github
```

After copying, start a new Codex task and ask for `$my-project` or `$my-github`.

For versioned operation, install skills from a tagged harness release and record that version in each generated project's `project.harness.json`.

## Project Creation Defaults

When `my-project` creates a new project:

1. Ask whether to use the design system.
2. If yes and no version is specified, resolve the latest stable `my-design-system` release.
3. Pin the exact version in the project manifest and lockfile.
4. Write `project.harness.json` documenting the harness, skill, and design system versions.

Example:

```json
{
  "designSystem": {
    "enabled": true,
    "repo": "my-design-system",
    "version": "1.0.1",
    "package": "@bongjava/design-system-react"
  }
}
```
