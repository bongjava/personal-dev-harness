// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "ExampleSwiftUIApp",
    dependencies: [
        .package(url: "https://github.com/bongjava/my-design-system.git", exact: "1.0.1")
    ],
    targets: [
        .target(name: "ExampleSwiftUIApp")
    ]
)
