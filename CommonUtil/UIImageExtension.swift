//
//  UIImageExtension.swift
//  ask-user_ios
//
//  Created by iMac on 2019/05/07.
//  Copyright © 2019 iMac. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    public func rotatedBy(degree: CGFloat, isCropped: Bool = true) -> UIImage {
//        let radian = -degree * CGFloat.pi / 180
//        var rotatedRect = CGRect(origin: .zero, size: self.size)
//        if !isCropped {
//            rotatedRect = rotatedRect.applying(CGAffineTransform(rotationAngle: radian))
//        }
//        UIGraphicsBeginImageContext(rotatedRect.size)
//        let context = UIGraphicsGetCurrentContext()!
//        context.translateBy(x: rotatedRect.size.width / 2, y: rotatedRect.size.height / 2)
//        context.scaleBy(x: 1.0, y: -1.0)
//
//        context.rotate(by: radian)
//        context.draw(self.cgImage!, in: CGRect(x: -(self.size.width / 2), y: -(self.size.height / 2), width: self.size.width, height: self.size.height))
//
//        let rotatedImage = UIGraphicsGetImageFromCurrentImageContext()!
//        UIGraphicsEndImageContext()
//        return rotatedImage
        return UIImage()
    }
}
