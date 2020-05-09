//
//  OpenRouterMatcher.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import UIKit

class OpenRouterMatcher: NSObject {
    public static let shared = ORTRegister()
    
    func match(key:String, userInfo:[String:Any]) -> UIViewController {
        return UIViewController()
    }
}
