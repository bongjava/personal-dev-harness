---
name: my-github
description: Apply the Personal Development Harness GitHub workflow to a repository, including branch naming, pull request shape, release tags, basic protections, and CI expectations. Use when the user asks to publish, prepare, standardize, review, or manage a GitHub-backed project created from the harness.
---

# My GitHub

## Overview

Prepare a project repository for predictable GitHub collaboration. Keep GitHub workflow policy here, while project scaffolding remains in `my-project` and design token releases remain in `my-design-system`.

## Workflow

1. Inspect the repo state before making changes.
2. Confirm whether the work is app code, harness code, or design system code.
3. Apply the matching branch and PR convention from `references/github-defaults.md`.
4. Ensure CI checks match the project type.
5. Use semver tags for releasable packages:
   - Harness releases: `harness-v1.0.0`
   - Design system releases: `v1.0.0`
   - App releases: project-specific tags

## Defaults

- Main branch: `main`
- Feature branches: `feat/<short-name>`
- Fix branches: `fix/<short-name>`
- Harness changes: `harness/<short-name>`
- Design system changes: `design-system/<short-name>`
- PR title: concise imperative summary
- Required checks: lint, test, build, and package validation when applicable

## Boundaries

- Owns GitHub conventions, PR/release flow, and repository hygiene.
- Does not scaffold apps, define design tokens, or decide UI library APIs.
- For design system releases, verify token/package version consistency before tagging.
