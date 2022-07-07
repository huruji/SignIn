//
//  Extensions.swift
//  SignIn
//
//  Created by huruji on 2022/7/4.
//

import UIKit
import SafariServices


extension UITextField {
    func setLeftPaddingPoints(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

