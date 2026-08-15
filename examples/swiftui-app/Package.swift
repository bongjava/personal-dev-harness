// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "ExampleSwiftUIApp",
    dependencies: [
        .package(url: "https://github.com/my-org/my-design-system.git", exact: "1.0.0")
    ],
    targets: [
        .target(name: "ExampleSwiftUIApp")
    ]
)
