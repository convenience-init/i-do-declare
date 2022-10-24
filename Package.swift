// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "iDoDeclare",
	platforms: [.iOS(.v14)],
	products: [
		.library(
			name: "iDoDeclare",
			targets: ["iDoDeclare"]),
	],
	dependencies: [],
	
	targets: [
		.target(
			name: "iDoDeclare",
			dependencies: []),
//		.testTarget(
//			name: "iDoDeclareTests",
//			dependencies: ["iDoDeclare"]),
	]
)
