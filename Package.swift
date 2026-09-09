// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "sfmc",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "sfmc",
            targets: ["sfmc"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/salesforce-marketingcloud/MarketingCloudSDK-iOS.git",
            from: "9.0.0")
    ],
    targets: [
        .target(
            name: "sfmc",
            dependencies: [
                .product(name: "MarketingCloudSDK", package: "MarketingCloudSDK-iOS")
            ],
            path: "ios/Classes",
            publicHeadersPath: "."
        )
    ]
)
