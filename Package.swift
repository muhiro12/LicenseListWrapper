// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LicenseListWrapper",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "LicenseListWrapper",
            targets: [
                "LicenseListWrapper"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/cybozu/LicenseList.git", branch: "main")
    ],
    targets: [
        .target(
            name: "LicenseListWrapper",
            dependencies: [
                .product(name: "LicenseList", package: "LicenseList")
            ]
        )
    ]
)
