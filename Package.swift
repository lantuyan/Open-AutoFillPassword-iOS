// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "OpenAutoFillPassword",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "OpenAutoFillPassword",
            targets: ["OpenAutoFillPassword"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OpenAutoFillPassword",
            path: "OpenAutoFillPassword.xcframework"
        )
    ]
)
