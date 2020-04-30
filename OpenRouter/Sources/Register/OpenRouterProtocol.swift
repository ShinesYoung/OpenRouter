//
//  OpenRouterRegistrable.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import Foundation

typealias RouteBlock = (() -> Void)


@objc public protocol OpenRouterClassRegistrable {
    
    static func routeKeys() -> [String]
    
}

@objc public protocol OpenRouterBlockRegistrable {
    
    static func routeKeysAndBlocks() -> [String: AnyObject]
    
}
