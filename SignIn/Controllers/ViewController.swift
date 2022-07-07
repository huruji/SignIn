//
//  ViewController.swift
//  SignIn
//
//  Created by huruji on 2022/6/27.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let tl = UILabel()
        tl.translatesAutoresizingMaskIntoConstraints = false
        tl.text = "Reader"
        tl.font = UIFont.boldSystemFont(ofSize: 40)
        tl.textColor = UIColor.black
        return tl
    }()
    
    let descriptionLabel:UILabel = {
        let des = UILabel()
        des.translatesAutoresizingMaskIntoConstraints = false
        des.text = "Find Compelling Ideas\nand Prespective"
        des.textAlignment = .center
        des.numberOfLines = 0
        des.font = UIFont.systemFont(ofSize: 30)
        return des
    }()
    
    let aboutUsButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("About Us", for: .normal)
        btn.backgroundColor = UIColor(red: 9/255, green: 122/255, blue: 253/255, alpha: 1)
        btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn.layer.shadowOffset = CGSize(width: 0, height: 3)
        btn.layer.shadowOpacity = 1
        btn.layer.shadowRadius = 10
        btn.layer.cornerRadius = 10
        btn.layer.masksToBounds = false
        
        btn.addTarget(self, action: #selector(aboutUsButtonAction), for: .touchUpInside)
        return btn
    }()
    
    let logInButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Login Now", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .black
        btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn.layer.shadowOffset = CGSize(width: 0, height: 3)
        btn.layer.shadowOpacity = 1
        btn.layer.shadowRadius = 10
        
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = 10
        
        btn.addTarget(self, action: #selector(logInAction), for: .touchUpInside)
        
        return btn
    }()
    
    let createAccountButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Create an Account", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .white
        btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25 ).cgColor
        btn.layer.shadowOffset = CGSize(width: 0, height: 3)
        btn.layer.shadowOpacity = 1
        btn.layer.shadowRadius = 10
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = 10
        
        btn.addTarget(self, action: #selector(createAccountAction), for: .touchUpInside)
        
        return btn
    }()

    override func viewDidLoad() {
        
        navigationController?.navigationBar.isHidden = true
        super.viewDidLoad()
        addBackgroundImage()
        setupViews()
        setupConstraints()
    }
    
    func addBackgroundImage() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "firstbackground")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
        
    }
    
    @objc func logInAction () {
        print("login action")
        let loginViewController = LoginViewController()
//        self.present(loginViewController, animated: true)
        navigationController?.pushViewController(loginViewController, animated: true)
//        print("jump")
    }
    
    @objc func createAccountAction() {
        let createAccountViewController = CreateAccountViewController()
        navigationController?.pushViewController(createAccountViewController, animated: true)
        
    }
    
    func setupViews() {
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(aboutUsButton)
        view.addSubview(logInButton)
        view.addSubview(createAccountButton)
    }
    
    func setupConstraints() {
        let constraints: [NSLayoutConstraint] = [
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            
            createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAccountButton.topAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: 100),
            createAccountButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50),
            
            logInButton.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: 15),
            logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            logInButton.heightAnchor.constraint(equalToConstant: 50),
            
            aboutUsButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 15),
            aboutUsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 110),
            aboutUsButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            aboutUsButton.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func aboutUsButtonAction() {
        
        func showSafariVc(for url: String) {
            guard let url = URL(string: url) else {
                return
            }

            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true)
        }

        showSafariVc(for: "https://github.com/aidinahmadian")
    }
}

