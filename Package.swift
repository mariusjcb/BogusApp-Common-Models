// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BogusApp-Common-Models",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BogusApp-Common-Models",
            targets: ["BogusApp-Common-Models"]
        ),
    ],
    dependencies: [
        .package(name: "danger-swift", url: "https://github.com/danger/swift.git", from: "1.0.0"),
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.47.10"),
        .package(url: "https://github.com/Realm/SwiftLint", from: "0.42.0"),
        .package(url: "https://github.com/orta/Komondor", from: "1.0.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BogusApp-Common-Models",
            dependencies: [.product(name: "Danger", package: "danger-swift")]
        ),
        .testTarget(
            name: "BogusApp-Common-ModelsTests",
            dependencies: ["BogusApp-Common-Models"]
        ),
    ]
)

#if canImport(PackageConfig)
    import PackageConfig

    let config = PackageConfiguration([
        "komondor": [
            "pre-commit": [
                "echo 'Running tests...'",
                "swift test",
                "echo 'Running SwiftFormat...'",
                "swift run swiftformat .",
                "echo 'Running SwiftLint...'",
                "swift run swiftlint autocorrect --path Sources/",
                "git add .",
            ],
        ],
    ]).write()
#endif
