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
    
    func request(requestType : RequestType,
                      urlStr : String,
                   parameter : [String : Any],
                   resultBlock : @escaping (_ responseObject : Any? , _ error : Error?)->()){
        //get请求
        if requestType == RequestType.Get{
            Alamofire.request(urlStr,
                              method: .get,
                              parameters: parameter)
                .responseJSON(completionHandler: { (res) in
                    if res.result.isSuccess{//请求成功
                        resultBlock(res.result.value,nil);
                    }
                    else{//请求失败
                        resultBlock(nil , res.result.error)
                    }
            });
        }
            ///post 请求
        else if requestType == RequestType.Post{
            Alamofire.request(urlStr, method: .post, parameters: parameter).responseJSON(completionHandler: { (res) in
                if res.result.isSuccess{//请求成功
                    resultBlock(res.result.value , nil);
                }
                else{//请求失败
                    resultBlock(nil , res.result.error)
                }
            })
        }
        
    }
    
}





























