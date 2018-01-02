//
//  UIImageView+XMLAExtension.swift
//  Alamofire
//
//  Created by liuqing on 2018/1/2.
//

import UIKit
import Kingfisher

extension UIImageView{
    
    func XML_setImage(url : URL, progress : @escaping (_ pro : Int64)->() , complete:@escaping ()->()){
        self.kf.setImage(with: url, progressBlock:
            {(receivedSize, expectedSize) in
                progress(receivedSize / expectedSize)
            })
        {(image, error, _, _) in
            self.image = image
            complete()
        }
    }
    
    func XML_setImage(url : URL, placeHoldImage: UIImage, isCircle: Bool){
        if isCircle{
            self.kf.setImage(with: url, placeholder: placeHoldImage.circleImage(), completionHandler: { (image, _, _, _) in
                let resultImage = image?.circleImage()
                if resultImage == nil{
                    return
                }
                self.image = resultImage
            })
        }
        else{
            self.kf.setImage(with: url, placeholder: placeHoldImage, completionHandler: { (image, _, _, _) in
                if image == nil{
                    return
                }
                self.image = image;
            })
        }
    }
}
