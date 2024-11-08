// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ASN1",
    platforms: [
        .macOS(.v10_13), .macCatalyst(.v13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4), .visionOS(.v1)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ASN1",
            targets: ["ASN1"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mIwr/BigInt", from: "1.20.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "ASN1",dependencies: ["BigInt"], resources: [.copy("PrivacyInfo.xcprivacy")]),
        .testTarget(name: "ASN1Tests", dependencies: ["ASN1"]),
    ]
)
