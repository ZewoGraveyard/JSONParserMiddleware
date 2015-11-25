// JSONParserMiddleware.swift
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Zewo
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Fuzz
import Curvature
import Medea

public struct JSONParserMiddleware: HTTPFallibleRequestMiddlewareType {
    public let key: String

    public init(key: String = "JSON") {
        self.key = key
    }

    public func respond(var request: HTTPRequest) throws -> HTTPRequestMiddlewareResult {
        guard let mediaType = request.contentType where mediaType.type == "application/json" else {
            return .Next(request)
        }

        request.data[key] = try JSONParser.parse(request.body)
        return .Next(request)
    }
}

extension HTTPRequest {
    public var json: JSON? {
        return data["JSON"] as? JSON
    }
}

public let parseJSON = JSONParserMiddleware()