//
//  Response.swift
//  YumeAlamofire
//
//  Created by Yume on 2018/12/10.
//  Copyright © 2018 Yume. All rights reserved.
//

import Foundation

public struct Response<T> {
    public let data: T
    public let request: URLRequest
    public let response: HTTPURLResponse
}
