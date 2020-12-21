//
//  OpenRouter.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import UIKit

public class OpenRouter: NSObject {
    static let shared = OpenRouter()
    
    static let defaultStack = ORTSimpleStack()
    
    
    var context: ORTContext = ORTContext()
    
    
    func setup() {
        ORTRegister.shared.autoRegisterRouting()
    }
}

// MARK:- Router setup
extension OpenRouter {
    
    public static func setup() {
        OpenRouter.shared.setup()
    }
}
