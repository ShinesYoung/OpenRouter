//
//  OpenRouterContext.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import Foundation

public class ORTContext {
    
    public static var routeClassMapper = [String: AnyClass]()
    public static var routeBlockMapper = [String: Any]()
    public static var routeActionMapper = [String: Any]()
    
    static func clear() {
        routeClassMapper.removeAll()
        routeBlockMapper.removeAll()
        routeActionMapper.removeAll()
    }
}
