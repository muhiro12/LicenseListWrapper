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
        .package(url: "https://github.com/cybozu/LicenseList.git", "2.0.0"..<"3.0.0")
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
