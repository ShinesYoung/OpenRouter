//
//  SimpleStack.swift
//  OpenRouter
//
//  Created by WiLL on 2020/12/21.
//  Copyright © 2020 shines. All rights reserved.
//

import UIKit

class ORTSimpleStack: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ORTSimpleStack: ORTStackAbililty {
    
    open func name() -> String? {
        return "MainStack"
    }
    
    open func top() -> UIViewController? {
        return topViewController
    }
    
    open func bottom() -> UIViewController? {
        return self.viewControllers.first
    }
        
    open func pop(animated: Bool) -> UIViewController? {
        return popViewController(animated: animated)
    }
    
    open func popToBottom(animated: Bool) -> [UIViewController]? {
        return popToRootViewController(animated: animated)
    }
    
    open func popToPage(vc: UIViewController, animated: Bool) -> [UIViewController]? {
        return popToViewController(vc, animated: animated)
    }
    
    open func `subscript`(index: Int) -> UIViewController? {
        guard index < viewControllers.count else {
            return nil
        }
        return viewControllers[index]
    }
    
    open func push(vc: UIViewController, animated: Bool) {
        pushViewController(vc, animated: animated)
    }
    
    open func push(vcList: [UIViewController]) {
        
    }
}
