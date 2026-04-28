// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MailCore2",
    platforms: [
        .iOS(.v15),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "MailCore",
            targets: ["MailCoreWrapper"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MailCoreBinary",
            url: "https://github.com/xmucyp/SPMMailCore/releases/download/1.0.4/MailCore.xcframework.zip",
            checksum: "26cc56fa411871f97b2633b8270b0669769c5546052d10c841bfa40c5e42c1e9"
        ),
        .target(
            name: "MailCoreWrapper",
            dependencies: ["MailCoreBinary"],
            path: "Sources/MailCoreWrapper",
            cSettings: [
                .unsafeFlags(["-w"])
            ],
            cxxSettings: [
                .unsafeFlags(["-w"])
            ],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"])
            ]
        )
    ]
)
