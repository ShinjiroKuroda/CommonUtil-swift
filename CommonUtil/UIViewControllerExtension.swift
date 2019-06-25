//
//  UIViewControllerExtension.swift
//  ask-user_ios
//
//  Created by iMac on 2019/04/08.
//  Copyright © 2019 iMac. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    // MARK:画面遷移
    
    public func changeViewPresent(storyboard: String, crossDissolve: Bool = false) {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        let vc = sb.instantiateInitialViewController()!
        if crossDissolve {
            vc.modalTransitionStyle = .crossDissolve
        }
        present(vc, animated: true, completion: nil)
    }
    
    public func changeViewPush(storyboard: String) {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        let vc = sb.instantiateInitialViewController()!
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    public func changeViewShow(storyboard: String) {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        let vc = sb.instantiateInitialViewController()!
        show(vc, sender: nil)
    }
    
    // MARK:アラート関連
    
    /*
     * アラート
     * @param message = アラートに表示するメッセージ
     */
    public func showAlertMessage(_ message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion:{
            alert.view.superview?.isUserInteractionEnabled = true
            alert.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dissmissAlert)))
        })
    }
    
    /*
     * ↑のアラートを消す
     */
    @objc public func dissmissAlert() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK:インジケーター

    public func setUpIndicator(vc: UIViewController) -> (UIActivityIndicatorView) {
        let activeIndicator = UIActivityIndicatorView()
        activeIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activeIndicator.center = vc.view.center
        activeIndicator.hidesWhenStopped = true
        activeIndicator.style = UIActivityIndicatorView.Style.gray
        vc.view.addSubview(activeIndicator)
        activeIndicator.startAnimating()
        return activeIndicator
    }
    
    // MARK:UserDefault
    public func getUserString(key:String) -> String {
        let value = UserDefaults.standard.string(forKey: key)
        if value != nil {
            return value!
        } else {
            return ""
        }
    }
    
    public func getUserInteger(key:String) -> Int {
        let value = UserDefaults.standard.integer(forKey: key)
        return value
    }
    
    public func getUserDefault_S(key:String) -> String {
        let value = UserDefaults.standard.string(forKey: key)
        if value != nil {
            return value!
        } else {
            return ""
        }
    }
    
    public func setUserDefault(key:String,value:Any) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    
    /*
     * 高さがキーボードに被る場合スクロールさせる。
     */
    public func moveUpViewPosition(textField: UITextField, vc: UIViewController) {
        var bounceHeight: CGFloat = 0.0
        if textField.frame.origin.y < 240 {
            bounceHeight = -130
        } else {
            bounceHeight = -210
        }
        UIView.animate(withDuration: 0.25, animations: { () in
            let transform = CGAffineTransform(translationX: 0, y: bounceHeight)
            vc.view.transform = transform
        })
    }
    
    /*
     * キーボード非表示時に上に上がっている画面を元に戻す
     */
    public func moveDownViewPosition(vc: UIViewController) {
        UIView.animate(withDuration: 0.25, animations: { () in
            vc.view.transform = .identity
        })
    }
}
