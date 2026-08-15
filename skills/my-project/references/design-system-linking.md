# Design System Linking

Use an external `my-design-system` release. Never copy token source files into a generated project unless the user explicitly asks for a local experimental fork.

## Version Rule

- Resolve "latest stable" to an exact semver version, such as `1.0.0`.
- Pin exact versions in package manifests.
- Commit lockfiles when the target ecosystem uses them.
- Record the resolved version in `project.harness.json`.

## React / Next.js

Install the React package:

```json
{
  "dependencies": {
    "@my-scope/design-system-react": "1.0.0"
  }
}
```

Import generated CSS variables and components:

```ts
import "@my-scope/design-system-react/tokens.css";
import { Button } from "@my-scope/design-system-react";
```

## Flutter

Pin the package in `pubspec.yaml`:

```yaml
dependencies:
  my_design_system:
    hosted: https://pub.dev
    version: 1.0.0
```

## Compose

Pin the package in the Gradle version catalog:

```toml
[versions]
myDesignSystem = "1.0.0"

[libraries]
my-design-system-compose = { module = "com.example:my-design-system-compose", version.ref = "myDesignSystem" }
```

## SwiftUI

Pin the package in `Package.swift` or Xcode package resolution:

```swift
.package(url: "https://github.com/my-org/my-design-system.git", exact: "1.0.0")
```
