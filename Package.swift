// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-ble-macro-cli",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        .executable(
            name: "ble",
            targets: ["BLECommandLine"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/xcode-actions/swift-signal-handling", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/Kuniwak/swift-ble-macro.git", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/Kuniwak/swift-logger.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/Kuniwak/swift-ble-assigned-numbers", .upToNextMajor(from: "2.0.0")),
    ],
    targets: [
        .executableTarget(
            name: "BLECommandLine",
            dependencies: [
                .product(name: "Logger", package: "swift-logger"),
                .product(name: "BLEAssignedNumbers", package: "swift-ble-assigned-numbers"),
                .product(name: "BLEInternal", package: "swift-ble-macro"),
                .product(name: "BLEMacro", package: "swift-ble-macro"),
                .product(name: "BLEMacroCompiler", package: "swift-ble-macro"),
                .product(name: "BLECommand", package: "swift-ble-macro"),
                .product(name: "BLEInterpreter", package: "swift-ble-macro"),
                .product(name: "BLEModel", package: "swift-ble-macro"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "SignalHandling", package: "swift-signal-handling"),
            ]
        ),
    ]
)
