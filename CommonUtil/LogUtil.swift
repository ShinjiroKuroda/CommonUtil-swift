//
//  LogUtil.swift
//  veve
//
//  Created by 黒田 真次郎 on 2018/05/04.
//  Copyright © 2018年 黒田 真次郎. All rights reserved.
//

import UIKit

/** デバッグ時のみ出力するログ **/
public func DLog(msg: String,
          function: String = #function,
          file: String = #file,
          line: Int = #line) {
    #if DEBUG
    print("※※※※※DLog※※※※※※\n[\(NSDate())\n[FUNCTION:\(function)]\n[LINE:\(line)] \n[CLASS NAME:\(className(from: file))]\n[MSG:\(msg)]\n※※※※※DLog※※※※※※")
    #else
    #endif
}

public func className(from filePath: String) -> String {
    let fileName = filePath.components(separatedBy: "/").last
    return fileName?.components(separatedBy: ".").first ?? ""
}

/** 無条件で出力するログ **/
public func ALog(msg: String,
          function: String = #function,
          line: Int = #line) {
    
    print("\(NSDate()) \(function)[LINE:\(line)] \(msg)")
}
