# GitHub Defaults

## Branches

- `main`: protected release branch.
- `feat/<short-name>`: user-facing feature work.
- `fix/<short-name>`: bug fixes.
- `harness/<short-name>`: Personal Development Harness changes.
- `design-system/<short-name>`: design token or package changes.

## Pull Requests

Include:

- What changed.
- Why it changed.
- Verification performed.
- Design system version impact when relevant.

## Releases

- `my-design-system`: tag stable releases as `vMAJOR.MINOR.PATCH`.
- `personal-dev-harness`: tag releases as `harness-vMAJOR.MINOR.PATCH`.
- App projects: use the app's own release scheme.

Before tagging `my-design-system`, verify all platform packages reference the same token release.
