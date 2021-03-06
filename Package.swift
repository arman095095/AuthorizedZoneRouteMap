// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let dependencies: [Package.Dependency] = [
    .package(url: "https://github.com/arman095095/ModelInterfaces.git", branch: "develop"),
    .package(url: "https://github.com/arman095095/Module.git", branch: "develop"),
]

let package = Package(
    name: "AuthorizedZoneRouteMap",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AuthorizedZoneRouteMap",
            targets: ["AuthorizedZoneRouteMap"]),
    ],
    dependencies: dependencies,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AuthorizedZoneRouteMap",
            dependencies: [.product(name: "Module", package: "Module"),
                           .product(name: "ModelInterfaces", package: "ModelInterfaces")]),
    ]
)
