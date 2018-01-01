//
//  XMLYSessionManager.swift
//  LQBase
//
//  Created by liuqing on 2018/1/1.
//

import UIKit
import Alamofire

enum RequestType : Int {
    case Get
    case Post
}

class XMLYSessionManager: NSObject {
    
    func request(requestType : RequestType, urlStr:String,parameter:[String:Any],resultBlock:()->(responseObject : Any ,error : Error)){
        
        if requestType == RequestType.Get{
        }
        
    }
    
}





























