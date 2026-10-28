// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaPangle",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaPangle",
            targets: ["REVUPMediaPangleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.3.0-release.9")
    ],
    targets: [
        .target(
            name: "REVUPMediaPangleTarget",
            dependencies: [
                .target(name: "REVUPMediaPangle"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaPangle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaPangle.zip",
            checksum: "d6053c4829631689e2e1fc5397bde31138fee93910b2829e31f84b97e9882f1c"
        ),
    ]
)
