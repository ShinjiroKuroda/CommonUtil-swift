//
//  StringExtension.swift
//  ask-user_ios
//
//  Created by iMac on 2019/05/23.
//  Copyright © 2019 iMac. All rights reserved.
//

import Foundation
import UIKit

extension Date {
    
    public var stringFromDate: String {
        let formatter: DateFormatter = DateFormatter()
//        formatter.calendar = Calendar(identifier: .gregorian)
//        formatter.locale = Locale(identifier: "ja_JP")
//        formatter.dateFormat = "yyyy'/'MM'/'dd'('EEE')' HH:mm"
        return formatter.string(from: self)
    }

    var stringFromDate2: String {
        let formatter: DateFormatter = DateFormatter()
//        formatter.calendar = Calendar(identifier: .gregorian)
//        formatter.locale = .japan
//        formatter.dateFormat = "yyyy'-'MM'-'dd' 'HH':'mm':'ss"
        
        return formatter.string(from: self)
    }

}
