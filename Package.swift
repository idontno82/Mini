// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "Mini",
    platforms: [
        .macOS(.v26)
    ],
    products: [
        .library(name: "Engine", targets: ["Engine"]),
    ],
    targets: [
        .target(
            name: "Engine",
            path: "Sources/Engine",
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "EngineTests",
            dependencies: ["Engine"]
        )
    ],
    swiftLanguageModes: [.v6]
)
