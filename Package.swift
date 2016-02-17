import PackageDescription

let package = Package(
	name: "JSONParserMiddleware",
	dependencies: [
        .Package(url: "https://github.com/Zewo/Middleware.git", majorVersion: 0, minor: 1),
        .Package(url: "https://github.com/Zewo/JSON.git", majorVersion: 0, minor: 1)
	]
)
