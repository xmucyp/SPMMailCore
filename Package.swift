// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MailCore2",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_13)
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
            url: "https://github.com/xmucyp/MailCore2/releases/download/spm-1.0.0/MailCore.xcframework.zip",
            checksum: "61fe73c8bb6513d93a49f52edd92bfddcff1783c3b2a9d6c9aa5947d7e96bf12"
        )
    ]
)
