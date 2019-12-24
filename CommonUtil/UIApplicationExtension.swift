//
//  UIApplication+Extension.swift
//  veve
//
//  Created by 黒田 真次郎 on 2018/05/12.
//  Copyright © 2018年 黒田 真次郎. All rights reserved.
//

import UIKit

/** usage
 UIApplication.shared.topViewController
 **/

extension UIApplication {
    public var topViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else { return nil }
        
//        while let presentedViewController = topViewController.presentedViewController {
//            topViewController = presentedViewController
//        }
        return topViewController
    }
    
    public var topNavigationController: UINavigationController? {
        return topViewController as? UINavigationController
    }
}
