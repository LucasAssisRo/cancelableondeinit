// swift-tools-version: 6.4

import PackageDescription

let package = Package(
  name: "CancelableOnDeinit",
  products: [
    .library(
      name: "CancelableOnDeinit",
      targets: ["CancelableOnDeinit"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-docc-plugin.git", .upToNextMajor(from: "1.4.3")),
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
