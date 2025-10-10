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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.4/TensorFlowLiteC.xcframework.patched.zip", checksum: "ac209bf90faa853dd0228337811a8bd08cbefa125a72686e57d8fb22e0947e09"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.4/TensorFlowLiteCCoreML.xcframework.patched.zip", checksum: "78a55f49252bade22a7f399a6000b058d07ca775f7ea0108b2a6f630c9b043ed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.4/TensorFlowLiteCMetal.xcframework.patched.zip", checksum: "44e7f7e15edf1b68b689560e5be1b24723681f1ac70b3cc83ee05633c25acb4e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
