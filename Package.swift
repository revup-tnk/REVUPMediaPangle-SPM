// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaPangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaPangle",
            targets: ["REVUPMediaPangleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.1.1-release.1")
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaPangle.zip",
            checksum: "c66d0ab8a54f6a1e4a884c9b544d8c9e73d915084a729b1787abaa8b881beda7"
        ),
    ]
)
