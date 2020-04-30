//
//  OpenRouter.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import UIKit

class OpenRouter: NSObject {
    
}

// MARK:- Router setup
extension OpenRouter {
    
    func setup() {
        OpenRouterRegister.shared.autoRegisterClass()
    }
}
