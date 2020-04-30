//
//  OpenRouterRegistrable.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import Foundation



@objc public protocol OpenRouterClassRegistrable {
    static func routeKeys() -> [String]
}

@objc public protocol OpenRouterBlockRegistrable {
//    typealias RoutingBlock = ((String, [String: Any]) -> Bool)
    static func routeKeysAndBlocks() -> [String: Any]
}
