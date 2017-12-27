
//
//  NSObject+Extension.swift
//  SinaProject
//
//  Created by liuqing on 2017/8/21.
//  Copyright © 2017年 liuqing. All rights reserved.
//

import Foundation

extension NSObject{
    
    /// 将一个对象的所有属性键值对转换成字典
    ///
    /// - Returns: 字典
    func transformObject() -> (Dictionary<String, Any>)?{
        //1.创建一个空字典
        var dict = Dictionary<String,Any>()
        var varCount : UInt32 = 0
        //runtime 动态获取属性列表
        let properties = class_copyPropertyList(object_getClass(self), &varCount)
        
            for i in 0..<Int(varCount){
                let property = properties?[i]
                guard let char_f = property_getName(property) else{
                    break
                }
                guard let propertyName = String.init(utf8String: char_f) else{
                    break
                }

                dict[propertyName] = getValueOfProperty(property: propertyName)
            }
        
        if dict.count != 0 {
            return dict
        }
        else {
            return nil
        }
    }
    
    /**
     - 获取对象对于的属性值，无对于的属性则返回NIL
     - parameter property: 要获取值的属性
     - returns: 属性的值
     */
    func getValueOfProperty(property : String) -> AnyObject?{
        let allPropertys = getAllPropertys()
        if(allPropertys.contains(property)){
            return value(forKey: property) as AnyObject
        }else{
            return nil
        }
    }
     
    /**
     -  获取对象的所有属性名称
     - returns:属性名称数组
     */
    func getAllPropertys() -> [String]{
        
        var result = [String]()
        let count =
            UnsafeMutablePointer<UInt32>.allocate(capacity: 0)
        let buff =
            class_copyPropertyList(object_getClass(self), count)
        let countInt =
            Int(count[0])
        
        for i in 0..<countInt {
            let temp = buff?[i]
            let tempPro =
                property_getName(temp)
            let proper = String.init(utf8String: tempPro!)
            result.append(proper!)
        }
        return result
    }

}
