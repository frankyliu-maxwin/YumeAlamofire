//
//  Sample+Array.swift
//  YumeAlamofire
//
//  Created by Yume on 2018/3/30.
//  Copyright © 2018年 Yume. All rights reserved.
//

import Foundation
import Alamofire
import JSONDecodeKit

struct Entry {}
extension Entry {
    struct BaseDatas3: Entryable {
        typealias ResponseType = [Response]
        
        let key: String
        
        let base: String = "http://localhost:3000"
        var path: String { return "/yume)" }
        let sessionManager: Alamofire.SessionManager = Alamofire.SessionManager.default
        let method: Alamofire.HTTPMethod = .get
        let parameters: Parameters = [:]
        let isJSONRequest: Bool = false
        let headers: Headers = [:]
    }
}

extension Entry.BaseDatas3 {
    struct Response {
        let code: Int
        let message: String
    }
}

extension Entry.BaseDatas3.Response: JSONDecodable {
    static func decode(json: JSON) throws -> Entry.BaseDatas3.Response {
        return try Entry.BaseDatas3.Response(code: json <| "code", message: json <| "message")
    }
}

//func abc() {
//    Entry.BaseDatas3(key: "").req(successHandler: <#T##(([Entry.BaseDatas3.Response]) -> Void)?##(([Entry.BaseDatas3.Response]) -> Void)?##([Entry.BaseDatas3.Response]) -> Void#>)
//}
