//
//  OpenRouterRegistrable.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import Foundation

@objc protocol OpenRouterRegistrable {
    
    static func routeKeys() -> [String]
    
}
