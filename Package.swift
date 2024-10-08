// swift-tools-version:4.2
import PackageDescription

var package = Package(
    name: "Base32",
    products: [
      .library(name: "Base32", targets: ["Base32"])
    ],
    targets: [
        .target(name: "Base32"),
        .testTarget(name: "Base32Tests", dependencies: ["Base32"])
    ],
    platforms: [
    .iOS(.v9),
    .macOS(.v10_9),
    .tvOS(.v9),
    .watchOS(.v2)
]
    swiftLanguageVersions: [.v4, .v4_2, .version("5"), .version("6")]
)

#if os(macOS)
    package.targets.append(.testTarget(name: "SecEncodeTransformTests", dependencies: ["Base32"]))
#endif
