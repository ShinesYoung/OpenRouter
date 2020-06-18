//
//  OpenRouterRegister.swift
//  OpenRouter
//
//  Created by WiLL on 2020/4/30.
//  Copyright © 2020 shines. All rights reserved.
//

import UIKit

class ORTRegister: NSObject {
    public static let shared = ORTRegister()
    
    public func autoRegisterRouting() {
        
        var classNumber: Int32 = 0
        var classBuffer: [AnyClass]
        
        classNumber = objc_getClassList(nil, 0)
        classBuffer = [AnyClass](repeating: NSObject.self, count: Int(classNumber))
        classBuffer.withUnsafeMutableBufferPointer { buffer in
            let autoreleasingPointer = AutoreleasingUnsafeMutablePointer<AnyClass>(buffer.baseAddress)
            objc_getClassList(autoreleasingPointer, classNumber)
        }
        
        let methodSignSEL  = NSSelectorFromString("methodSignatureForSelector:")
        let unrecognizeSEL = NSSelectorFromString("doesNotRecognizeSelector:")
        let classRegisterProtocol:Protocol = ORTClassRegistrable.self
        let blockRegisterProtocol:Protocol = ORTBlockRegistrable.self
        
        for index in 0 ..< classNumber {
            let aClass: AnyClass = classBuffer[Int(index)]
            guard class_respondsToSelector(aClass, methodSignSEL) else {
                continue
            }
            guard class_respondsToSelector(aClass, unrecognizeSEL) else {
                continue
            }
            
            if class_conformsToProtocol(aClass, classRegisterProtocol) == true {
                let registrableClass = aClass as! ORTClassRegistrable.Type
                registerRoutingClass(registrableClass: registrableClass)
                
            } else if class_conformsToProtocol(aClass, blockRegisterProtocol) == true {
                let registrableClass = aClass as! ORTBlockRegistrable.Type
                registerRoutingBlocks(registrableClass: registrableClass)
            }
        }
    }
    
    public func registerRoutingClass(registrableClass: ORTClassRegistrable.Type) {
        let routeKeys = registrableClass.routeKeys()
        for aKey in routeKeys {
            registerClass(registrableClass, for: aKey)
        }
    }
    
    public func registerRoutingBlocks(registrableClass: ORTBlockRegistrable.Type) {
        let routeKeysAndBlocks = registrableClass.routeKeysAndBlocks()
        for (key, value) in routeKeysAndBlocks {
            registerBlock(value, for: key)
        }
    }
    
    public func registerClass(_ classType:AnyClass, for key:String) {
        ORTContext.routeClassMapper[key] = classType
    }

    public func registerBlock(_ block:Any, for key:String) {
        ORTContext.routeBlockMapper[key] = block
    }

}
