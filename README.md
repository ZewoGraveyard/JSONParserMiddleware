JSONParserMiddleware
====================

[![Swift 2.2](https://img.shields.io/badge/Swift-2.2-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms Linux](https://img.shields.io/badge/Platforms-Linux-lightgray.svg?style=flat)](https://developer.apple.com/swift/)
[![License MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat)](https://tldrlegal.com/license/mit-license)
[![Slack Status](https://zewo-slackin.herokuapp.com/badge.svg)](https://zewo-slackin.herokuapp.com)

JSON parser middleware for **Swift 2**.

## Installation

- Install [`uri_parser`](https://github.com/Zewo/uri_parser), if you haven't already.

```bash
$ git clone https://github.com/Zewo/uri_parser.git
$ cd uri_parser
$ make
$ dpkg -i uri_parser.deb
```

- Add `JSONParserMiddleware` to your `Package.swift`

```swift
import PackageDescription

let package = Package(
	dependencies: [
		.Package(url: "https://github.com/Zewo/JSONParserMiddleware.git", majorVersion: 0, minor: 1)
	]
)
```
## Community

[![Slack](http://s13.postimg.org/ybwy92ktf/Slack.png)](https://zewo-slackin.herokuapp.com)

Join us on [Slack](https://zewo-slackin.herokuapp.com).

License
-------

**JSONParserMiddleware** is released under the MIT license. See LICENSE for details.
