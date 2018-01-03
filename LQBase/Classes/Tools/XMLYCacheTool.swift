//
//  XMLYCacheTool.swift
//  Alamofire
//
//  Created by liuqing on 2018/1/3.
//

import UIKit

class XMLYCacheTool: NSObject {

    /// 删除给定path下的所有文件
    ///
    /// - Parameter path: 给定文件夹的路径
    static func clearCache(path: String){
        let manager = FileManager.default
        
        do {
            try manager.removeItem(atPath: path)
        }catch{
            
        }
    }
    
     ///获取文件夹的大小
    /// - Parameter path: 文件夹路径
    /// - Returns: 大小字符串
    static func getFileSize(path: String) -> String{
        
        var size : Double = 0
        
        //获取文件管理者
        let fileManager = FileManager.default
        
        //获取路径下的所有子路径数组
        guard let subPath = fileManager.subpaths(atPath: path)else{
            return "\(size)B"
        }
        
        //遍历所有子路径下的文件夹 获取文件大小
        for path in subPath{
            //拼接文件绝对路径
            let resultPath = (path as NSString).appendingPathComponent(path)
            //获取绝对路径下文件的大小
            let perSize = try? fileManager.attributesOfItem(atPath: resultPath)[.size] as? Double
            //获取文件总大小
            size += (perSize ?? 0.0)!
        }
        
        return self.fileSizeString(size)
    }
    
    static func fileSizeString(_ size : Double) -> String{
        if size >= pow(10, 9) {//小于1G
            return String(format: "%.2fG",size / pow(10, 9))
        }
        else if size >= pow(10, 6){//小于1M
            return String(format: "%.2fM",size / pow(10, 6))
        }else if size >= pow(10, 3){//小于1kb
            return String(format: "%.2fK",size / pow(10, 3))
        }else{
            return "\(size)B"
        }
    }
    
}
