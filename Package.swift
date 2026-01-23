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
            targets: ["MailCore"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MailCore",
            url: "https://github.com/xmucyp/SPMMailCore/releases/download/1.0.2/MailCore.xcframework.zip",
            checksum: "867f0766c9460b00054b4f51894d9570ea1ec815658cfcd98b85475a6c20775c"
        )
    ]
)
