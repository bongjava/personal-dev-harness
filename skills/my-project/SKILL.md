---
name: my-project
description: Create new software projects from the Personal Development Harness, including repository layout, manifest files, quality defaults, and optional design system wiring. Use when the user asks to start, scaffold, initialize, or standardize a project, especially when they mention React, Next.js, Flutter, Compose, SwiftUI, or connecting a versioned design system.
---

# My Project

## Overview

Create a new project that follows the harness defaults while keeping project-specific choices in the project. If the user wants the design system, depend on a released `my-design-system` package version rather than copying token source into the harness or app.

## Workflow

1. Identify the target stack: React/Next.js, Flutter, Compose, SwiftUI, or another stack.
2. Ask only for missing high-impact choices: project name, stack, design system usage, and design system version.
3. Default design system version to the latest stable release when no version is requested.
4. Pin the exact resolved version in the project manifest or lockfile.
5. Add `project.harness.json` so future agents can see which harness and design system versions were used.
6. Add only stack-specific integration files; do not copy `my-design-system/tokens` source into the app.

## Design System Linking

Use this rule:

- `designSystem.enabled: false`: create the project without UI package dependencies.
- `designSystem.enabled: true` and no version: resolve the latest stable semver tag such as `v1.2.3`, then pin `1.2.3`.
- `designSystem.enabled: true` and a requested version: validate it is an exact stable semver version, then pin it.

For stack-specific details, read `references/design-system-linking.md`.

## Manifest

Every generated project should include:

```json
{
  "harness": {
    "name": "personal-dev-harness",
    "version": "1.0.0"
  },
  "skills": {
    "project": "my-project@1.0.0",
    "github": "my-github@1.0.0"
  },
  "designSystem": {
    "enabled": true,
    "repo": "my-design-system",
    "version": "1.0.0",
    "package": "@my-scope/design-system-react"
  }
}
```

## Boundaries

- Owns project creation decisions and dependency wiring.
- Does not own design tokens, component implementation, GitHub remote setup, or release publishing.
- Reads harness templates as guidance, then adapts them to the target project.
