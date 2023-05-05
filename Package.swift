// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "depot-dependency",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
    ],
    products: [
        .library(name: "DepotDependency", targets: ["DepotDependency"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "0.4.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "DepotDependency",
            dependencies: [
                .product(name: "Dependencies", package: "swift-dependencies")
            ]),
        .testTarget(
            name: "DepotDependencyTests",
            dependencies: [
                "DepotDependency"
            ]),
    ]
)
