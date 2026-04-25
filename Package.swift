// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Termini",
    
    platforms: [
        .iOS(.v17),   // safe baseline for modern iOS
        .macOS(.v13)
    ],
    
    products: [
        .library(
            name: "Termini",
            targets: ["Termini"]
        ),
    ],
    
    targets: [
        .target(
            name: "Termini",
            path: "Sources/Termini"
        ),
        
        .testTarget(
            name: "TerminiTests",
            dependencies: ["Termini"],
            path: "Tests"
        )
    ]
)
