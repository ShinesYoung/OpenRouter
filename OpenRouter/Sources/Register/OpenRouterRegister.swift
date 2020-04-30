//
//  OpenRouterRegister.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import UIKit

class OpenRouterRegister: NSObject {
    public static let shared = OpenRouterRegister()
    
    public func autoRegisterClass() {
        let registrableClasses = findAllRegistrableClasses()
        for aRegistrableClass in registrableClasses {
            let routeKeys = aRegistrableClass.routeKeys()
            for aKey in routeKeys {
                registerClass(aRegistrableClass, for: aKey)
            }
        }
    }
    
    func findAllRegistrableClasses() -> [OpenRouterRegistrable.Type] {
        var count: UInt32 = 0
        var result = [OpenRouterRegistrable.Type]()
        let allClasses = objc_copyClassList(&count)!
        
        print("class count = \(count)")
        
        let registerProtocol:Protocol = OpenRouterRegistrable.self
        for index in 0 ..< count {
            let aClass: AnyClass = allClasses[Int(index)]
            if class_conformsToProtocol(aClass, registerProtocol) == true {
                result.append(aClass as! OpenRouterRegistrable.Type)
            }
        }
        return result
    }
    
    public func registerClass(_ classType:AnyClass, for key:String) {
        OpenRouterContext.routeClassMapper[key] = classType
    }
    
    public func registerBlock(_ block:AnyObject, for key:String) {
        OpenRouterContext.routeBlockMapper[key] = block
    }
}
