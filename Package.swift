// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "CancelableOnDeinit",
    products: [
        .library(
            name: "CancelableOnDeinit",
            targets: ["CancelableOnDeinit"]
        ),
    ],
    targets: [
        .target(
            name: "CancelableOnDeinit",
            dependencies: []
        ),
        .testTarget(
            name: "CancelableOnDeinitTests",
            dependencies: ["CancelableOnDeinit"]
        ),
    ]
)
