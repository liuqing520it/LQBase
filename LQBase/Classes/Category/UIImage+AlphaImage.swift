//
//  UIImage+AlphaImage.swift
//  SinaProject
//
//  Created by liuqing on 2017/9/2.
//  Copyright © 2017年 liuqing. All rights reserved.
//

import UIKit

extension UIImage{
    /// 同过给定一个颜色产生一张图片
    /// - Parameter color: 颜色
    /// - Returns: 图片
    class func imageWithColor(color : UIColor) -> UIImage{
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        //开启上下文
        UIGraphicsBeginImageContext(rect.size)
        //获取位图上下文
        let context = UIGraphicsGetCurrentContext()
        //设置填充颜色
        context!.setFillColor(color.cgColor)
        //渲染上下文
        context!.fill(rect)
        //获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //关闭上下文
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    /// 图片圆角
    /// 避免使用layer.cornerRadius 产生离屏渲染
    /// - Returns: 返回一个带圆角的图片
    func circleImage() -> UIImage{
        UIGraphicsBeginImageContext(self.size)
        let ctx = UIGraphicsGetCurrentContext()
        let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        ctx!.addEllipse(in: rect);
        ctx!.clip()
        draw(in: rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
















