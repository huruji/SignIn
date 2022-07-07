//
//  Input.swift
//  SignIn
//
//  Created by huruji on 2022/7/6.
//

import UIKit



class Input: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        self.setView(placeholder: placeholder)
    }
    
    required init(coder aDecoder: NSCoder) {
            fatalError("NSCoding not supported")
    }
    
    func setView(placeholder: String) {
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.darkGray])
    self.borderStyle = .none
        self.backgroundColor = UIColor(red: 255/255, green: 250/255, blue: 250/255, alpha: 1)
        self.textAlignment = .left
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        self.layer.borderColor = UIColor(red: 205/255, green: 205/255, blue: 205/255, alpha: 1).cgColor
        self.layer.borderWidth = 1
        self.setLeftPaddingPoints(20)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
