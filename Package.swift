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
        .package(url: "https://github.com/revup-tnk/REVUP-iOS-Pangle.git", exact: "1.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaPangleTarget",
            dependencies: [
                .target(name: "REVUPMediaPangle"),
                .product(name: "REVUPWithPangle", package: "REVUP-iOS-Pangle"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaPangle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaPangle.zip",
            checksum: "6f550c7e7dd048c1fa03384f82cae6ef1d27e1e6e58b332c43be9ac155908209"
        ),
    ]
)
