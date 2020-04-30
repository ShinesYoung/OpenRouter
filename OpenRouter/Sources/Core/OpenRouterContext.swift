//
//  OpenRouterContext.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import Foundation

class OpenRouterContext {
    
    static var routeClassMapper = [String: AnyClass]()
    static var routeBlockMapper = [String: AnyObject]()
    
    static func clear() {
        routeClassMapper.removeAll()
        routeBlockMapper.removeAll()
    }
}
