//
//  UITextView.swift
//  EX_TextView
//
//  Created by TsungHan on 2017/10/16.
//  Copyright © 2017年 TsungHan. All rights reserved.
//

import UIKit

extension UITextView {
    func appendLinkString(string:String, withURLString:String = "") {
        let attrString:NSMutableAttributedString = NSMutableAttributedString()
        attrString.append(self.attributedText)
        
        let attrs = [NSAttributedStringKey.font : self.font!]
        let appendString = NSMutableAttributedString(string: string, attributes:attrs)
        if withURLString != "" {
            let range = NSMakeRange(0, appendString.length)
            appendString.beginEditing()
            appendString.addAttribute(NSAttributedStringKey.link, value:withURLString, range:range)
            appendString.endEditing()
        }
        attrString.append(appendString)
        
        self.attributedText = attrString
    }
}
