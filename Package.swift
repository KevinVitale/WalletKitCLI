// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CLI",
    platforms: [
      .macOS(.v10_15),
    ],
    products: [
      .executable(name: "wallet-cli", targets: ["CLI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.4"),
        .package(path: "../WalletKit"),
    ],
    targets: [
        .target(name: "CLI", dependencies: [
            "WalletKit",
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
        ]),
    ]
)

