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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.3/TensorFlowLiteC.xcframework.patched.zip", checksum: "603a4200cad2e694f68c9a3d4285cf026108845629ec994f33f2fc468864ea39"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.3/TensorFlowLiteCCoreML.xcframework.patched.zip", checksum: "b9e652454444e0674e03e0c253a575b36791c49012dadd6e0317a3b04fe72dbe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/jonathaplima/TensorFlowLiteC/releases/download/v0.0.3/TensorFlowLiteCMetal.xcframework.patched.zip", checksum: "d2706eae5d446f9ebb4f826871f8d8cd42f320099439113b40ffed23aec75be1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
