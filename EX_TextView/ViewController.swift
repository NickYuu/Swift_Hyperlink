//
//  ViewController.swift
//  EX_TextView
//
//  Created by TsungHan on 2017/10/16.
//  Copyright © 2017年 TsungHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate  {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
        textView.text = ""
        textView.appendLinkString(string: "若您忘記密碼，立即")
        textView.appendLinkString(string: "寄發密碼信", withURLString:"https:google.com")
        textView.appendLinkString(string: "至註冊信箱！\n\n若您忘記密碼，可以按下")
        textView.appendLinkString(string: "帳號重置", withURLString:"https:google.com")
        textView.appendLinkString(string: "，\nAPP將恢復至初次使用狀態，即可以重新設定您的密碼。")
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        
        let alertController = UIAlertController(title: "按下",
            message: "\(URL)", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        
        return true
    }
}

