//
//  ExtensionHelper.swift
//  learningware
//
//  Created by AppTime on 2019/05/31.
//  Copyright © 2019 AppTime. All rights reserved.
//

import Foundation
import UIKit

extension String {
    public func addingPercentEncodingExtension() -> String {
        if !self.contains("rr.img.naver.jp") { // Naverの場合はエンコードしない
            return self.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlFragmentAllowed)!
        }
        return self
    }
}

extension Locale {
    public static let japan = Locale(identifier: "ja_JP")
}

extension TimeZone {
    public static let japan = TimeZone(identifier: "Asia/Tokyo")!
}

extension UIScrollView {
    //拡張：LoginViewControllerのtouchedBeganへバブリングさせる
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.next?.touchesBegan(touches, with: event)
    }
}

public class CustomTextField: UITextField {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.borderStyle = .none
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth  = 1
        self.layer.masksToBounds = true
    }
    
    // 入力したテキストの余白
    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10.0, dy: 0.0)
    }
    
    // 編集中のテキストの余白
    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10.0, dy: 0.0)
    }
    
    // プレースホルダーの余白
    override public func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10.0, dy: 0.0)
    }
}
