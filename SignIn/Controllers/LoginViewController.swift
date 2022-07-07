//
//  LoginViewController.swift
//  SignIn
//
//  Created by huruji on 2022/7/3.
//

import UIKit
import SafariServices

class LoginViewController:BaseViewController {
    
    let mail:UITextField = {
        let tf = Input(placeholder: "Phone number, username, or email")
        return tf
    }()
    
    let password:UITextField = {
        let tf = Input(placeholder: "Password")
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = "Login"
        self.signInButton.setTitle("Sign In", for: .normal)
        self.signInButton.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        self.signUpLabel.text = "Don't have an account? Register Now"
        setupTextFieldView()
        addTextFieldConstraints()
    }
    
    @objc func signInAction(){
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
    }

    
    func setupTextFieldView() {
        view.addSubview(mail)
        view.addSubview(password)
    }
    
    
    
    func addTextFieldConstraints() {
        let constraints: [NSLayoutConstraint] = [
            
            mail.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            mail.heightAnchor.constraint(equalToConstant: 44),
            mail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            password.heightAnchor.constraint(equalToConstant: 44),
            password.topAnchor.constraint(equalTo: mail.bottomAnchor, constant: 20),
            password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            password.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
