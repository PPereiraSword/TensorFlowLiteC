// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.5/TensorFlowLiteC.xcframework.patched.zip", checksum: "cd411fbe9404158fa640f480a0dce00825de229367535f9bdc4e710cfe8aa3c8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.5/TensorFlowLiteCCoreML.xcframework.patched.zip", checksum: "c2c1c95bc8806b2bea4ff2498260c32e6306b0086f4b256535b7fb7b6d3bf49f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.5/TensorFlowLiteCMetal.xcframework.patched.zip", checksum: "35ce267af898f0214c0e267008a3ef7e20b1d446cfc8257f6db29fcc676f9193"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
