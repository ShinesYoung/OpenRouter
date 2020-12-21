//
//  StackProtocol.swift
//  OpenRouter
//
//  Created by WiLL on 2020/12/21.
//  Copyright © 2020 shines. All rights reserved.
//

import Foundation
import UIKit

/**
 * This protocol present the ability of Router stack
 */
protocol ORTStackAbililty {
    
    /**
     * return this stack's name, use to identify stack component.
     */
    func name() -> String?
    
    /**
     * return this stack's top element,
     * if stack don't contain element, then return nil
     */
    func top() -> UIViewController?
    
    /**
     * return this stack's bottom element
     * if stack don't contain element, then return nil
     */
    func bottom() -> UIViewController?
        
    /**
     * Stack pop the top element.
     */
    func pop(animated: Bool) -> UIViewController?
    
    /**
     * Stack pop to bottom element.
     * Elements those above bottom element will be pop.
     */
    func popToBottom(animated: Bool) -> [UIViewController]?
    
    /**
     * stack pop to some element which input from param
     */
    func popToPage(vc: UIViewController, animated: Bool) -> [UIViewController]?
    
    /**
     * access to vistor the element by index
     */
    func `subscript`(index: Int) -> UIViewController?
    
    /**
     * push new element to stack
     */
    func push(vc: UIViewController, animated: Bool)
    
    /**
     * pusn new elements to stack
     */
    func push(vcList: [UIViewController])

}
