//
//  XMLYAlertTool.swift
//  Alamofire
//
//  Created by liuqing on 2018/1/3.
//

import UIKit

class XMLYAlertTool: NSObject {

    static func alert(title: String?, alertType: UIAlertControllerStyle, message: String?, didTask:@escaping ()->()){
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: alertType)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) { (_) in}
        let confirmAction = UIAlertAction(title: "确定", style: UIAlertActionStyle.default) { (_) in
            didTask()
        }
        alertVC.addAction(cancelAction)
        alertVC.addAction(confirmAction)
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alertVC, animated: true, completion: nil)
    }
}







