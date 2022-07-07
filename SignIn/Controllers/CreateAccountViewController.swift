//
//  CreateAccountViewController.swift
//  SignIn
//
//  Created by huruji on 2022/7/4.
//

import UIKit

class CreateAccountViewController:BaseViewController {
    
    let fullName:UITextField = {
        let tf = Input(placeholder: "Full Name")
        return tf
    }()
    
    let email:UITextField = {
        let tf = Input(placeholder: "Email")
        return tf
    }()
    
    let phone:UITextField = {
        let tf = Input(placeholder: "Phone Number")
        return tf
    }()
    
    let password:UITextField = {
        let tf = Input(placeholder: "Password")
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = "Registration"
        self.signInButton.setTitle("Sign Up", for: .normal)
//        self.signInButton.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        self.signUpLabel.text = "Already a Member? Sign In"
        setupTextFieldView()
        addTextFieldConstraints()
    }
    
    func setupTextFieldView() {
        view.addSubview(fullName)
        view.addSubview(email)
        view.addSubview(phone)
        view.addSubview(password)
    }
    
    func addTextFieldConstraints(){
        let constraints:[NSLayoutConstraint] = [
            fullName.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            fullName.heightAnchor.constraint(equalToConstant: 44),
            fullName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fullName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            email.heightAnchor.constraint(equalToConstant: 44),
            email.topAnchor.constraint(equalTo: fullName.bottomAnchor, constant: 20),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            phone.heightAnchor.constraint(equalToConstant: 44),
            phone.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 20),
            phone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            phone.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            password.heightAnchor.constraint(equalToConstant: 44),
            password.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 20),
            password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            password.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
