// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "GDR",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "GDR",
            targets: ["AppModule"],
            bundleIdentifier: "org.jhhs.627366.GDR",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .smiley),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)