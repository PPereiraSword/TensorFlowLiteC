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
		.binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.6/TensorFlowLiteC.xcframework.patched.zip", checksum: "a9068036b5696954b010f01d6f631f824003b61a33efb6be549008fd6f9bafee"),
		.binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.6/TensorFlowLiteCCoreML.xcframework.patched.zip", checksum: "8919ccfc31175122c04eee22111eb48ada2d61653b029e5add14f0da32230cf0"),
		.binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.6/TensorFlowLiteCMetal.xcframework.patched.zip", checksum: "67afdd2fa51f93d65d61f7eb460163399582d21d82b496f8870cb39c84305e95"),
		.target(name: "Link",
				linkerSettings: [.linkedLibrary("c++")]),
	]
)
