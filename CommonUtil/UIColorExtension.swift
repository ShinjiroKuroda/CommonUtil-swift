//
//  UIColorExtension.swift
//  ask-user_ios
//
//  Created by iMac on 2019/05/07.
//  Copyright © 2019 iMac. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    public convenience init(code: String) {
        let cString = code.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        if ((cString as String).count != 6) {
            self.init(red: 169/255, green: 169/255, blue: 169/255, alpha: 1.0)
        } else {
            let rString = (cString as NSString).substring(with: NSRange(location: 0, length: 2))
            let gString = (cString as NSString).substring(with: NSRange(location: 2, length: 2))
            let bString = (cString as NSString).substring(with: NSRange(location: 4, length: 2))
            var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
            Scanner(string: rString).scanHexInt32(&r)
            Scanner(string: gString).scanHexInt32(&g)
            Scanner(string: bString).scanHexInt32(&b)
            self.init(red: CGFloat(Float(r)/255), green: CGFloat(Float(g)/255), blue: CGFloat(Float(b) / 255.0), alpha: CGFloat(Float(1.0)))
        }
    }
}
