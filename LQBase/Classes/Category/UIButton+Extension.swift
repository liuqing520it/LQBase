//
//  File.swift
//  SinaProject
//
//  Created by liuqing on 2017/8/12.
//  Copyright © 2017年 liuqing. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(imageName : String , backgroundImageName : String?) {
        self.init()
        setImage(UIImage(named:imageName), for: .normal)
        setImage(UIImage(named:imageName + "_highlighted"), for: .highlighted)
        if let backgroundIN = backgroundImageName {
            setBackgroundImage(UIImage(named:backgroundIN), for: .normal)
            setBackgroundImage(UIImage(named:backgroundIN + "_highlighted"), for: .highlighted)
        }
        sizeToFit()
    }
    
    
    /// 快速创建一个 button
    ///
    /// - Parameters:
    ///   - normalTitle: normal状态下的标题
    ///   - titleNormalColor: normal状态下的字体颜色
    ///   - titleFont: 字体大小 默认13
    ///   - selectedTitle: selected状态下的标题 默认为空
    ///   - titleSelectedColor: selected状态下的标题颜色 默认未透明
    ///   - imageName: 图片名字
    convenience init(normalTitle:String? = nil,
                     titleNormalColor : UIColor = UIColor.darkText,
                     titleFont : UIFont = UIFont.systemFont(ofSize: 13),
                     selectedTitle:String? = nil,
                     titleSelectedColor : UIColor = UIColor.clear,
                     imageName:String? = nil,
                     selectedImageName:String? = nil,
                     backgroundImage:String? = nil) {
        self.init()
        setTitle(normalTitle, for: .normal)
        setTitleColor(titleNormalColor, for: .normal)
        if !titleSelectedColor.isEqual(UIColor.clear) {
            setTitle(selectedTitle, for: .selected)
            setTitleColor(titleSelectedColor, for: .selected)
        }
        titleLabel?.font = titleFont
        if let imageN = imageName {
            setImage(UIImage(named:imageN), for: .normal)
        }
        if let selectedImage = selectedImageName {
            setImage(UIImage(named:selectedImage), for: .selected)
        }
        if let bgImage = backgroundImage{
            setBackgroundImage(UIImage(named:bgImage), for: .normal)
        }
        sizeToFit()
    }

}
