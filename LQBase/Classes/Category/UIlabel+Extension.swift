//
//  UIlabel+Extension.swift
//  SinaProject
//
//  Created by liuqing on 2017/8/13.
//  Copyright © 2017年 liuqing. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(title : String? = nil,
                titleColor : UIColor,
                  textFont : UIFont = .systemFont(ofSize: 13),
              numberOfLine : Int = 1 ,
                 alignment : NSTextAlignment = .center) {
        self.init()
        if let textTitle = title{
            text = textTitle
        }
        textColor = titleColor
        font = textFont
        numberOfLines = numberOfLine
        textAlignment = alignment
        sizeToFit()
    }
}
