// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "MySwiftLib",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(name: "MySwiftLib", targets: ["MySwiftLib"])
    ],
    targets: [
        .target(name: "MySwiftLib", dependencies: ["MyHaskellLib"], path: "Swift"),
        .binaryTarget(
            name: "MyHaskellLib",
            path: "haskell/_build/MyHaskellLib.xcframework"
        )
    ]
)

