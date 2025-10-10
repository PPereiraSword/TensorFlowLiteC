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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.1/TensorFlowLiteC.xcframework.patched.zip", checksum: "46b89b906f64475f0b0c0d598f436d0dce1d27336065d37e96bbf0c278bc8299"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.1/TensorFlowLiteCCoreML.xcframework.patched.zip", checksum: "40cf9246ec5fc7054babd2a143f1992ca5f036a39c0ce184a2f5102a208a1b2b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.1/TensorFlowLiteCMetal.xcframework.patched.zip", checksum: "ec1bd8392e01110d8804acfe0d3424965d9c94fb4ef63d4d74ee382425c790d4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
