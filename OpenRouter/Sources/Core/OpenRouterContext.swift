//
//  OpenRouterContext.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import Foundation

public class OpenRouterContext {
    
    public static var routeClassMapper = [String: AnyClass]()
    public static var routeBlockMapper = [String: AnyObject]()
    
    static func clear() {
        routeClassMapper.removeAll()
        routeBlockMapper.removeAll()
    }
}
