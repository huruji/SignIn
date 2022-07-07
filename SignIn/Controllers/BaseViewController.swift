//
//  BaseViewController.swift
//  SignIn
//
//  Created by huruji on 2022/7/6.
//

import UIKit
import SafariServices

class BaseViewController:UIViewController {
    
    
    let titleLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let signInButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor(red: 8/255, green: 122/255, blue: 254/255, alpha: 1)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.layer.cornerRadius = 10
        btn.layer.masksToBounds = false
        btn.clipsToBounds = true
        btn.layer.shadowRadius = 10
        btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn.layer.shadowOpacity = 1
        btn.layer.shadowOffset = CGSize(width: 0, height: 3)
        return btn
    }()
    
    let signUpLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 8/255, green: 122/255, blue: 254/255, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()

    let twitterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(twitterAction), for: .touchUpInside)
        return button
    }()
    
    let instagramButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "instagram"), for: .normal)
        button.addTarget(self, action: #selector(instagramAction), for: .touchUpInside)
        return button
    }()
    
    let githubButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "github"), for: .normal)
        
        button.addTarget(self, action: #selector(githubAction), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackgroundImage()
        
        setupView()
        addConstraints()
    }
    
    func addBackgroundImage() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "sixthbackground")
        backgroundImage.contentMode = .scaleAspectFill
        view.addSubview(backgroundImage)
    }
    
    func setupView() {
        view.addSubview(titleLabel)
        view.addSubview(signInButton)
        view.addSubview(signUpLabel)
        view.addSubview(twitterButton)
        view.addSubview(instagramButton)
        view.addSubview(githubButton)
    }
    
    @objc func githubAction () {
        showSafariVc(for: "https://www.github.com/huruji")
    }
    
    @objc func twitterAction() {
        showSafariVc(for: "https://twitter.com/")
    }
    
    @objc func instagramAction(){
        showSafariVc(for: "https://www.instagram.com/")
    }
    
    
    func showSafariVc(for url: String) {
        guard let url = URL(string: url) else {
            return
        }

        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    func addConstraints() {
        let constraints: [NSLayoutConstraint] = [
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 45),
            
            signInButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            signInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            signInButton.heightAnchor.constraint(equalToConstant: 55),
            signInButton.bottomAnchor.constraint(equalTo: signUpLabel.topAnchor, constant: -25),
            
            signUpLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            signUpLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            signUpLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            signUpLabel.heightAnchor.constraint(equalToConstant: 35),
            
            twitterButton.heightAnchor.constraint(equalToConstant: 30),
            twitterButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            twitterButton.widthAnchor.constraint(equalToConstant: 30),
            twitterButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 120),
            
            githubButton.heightAnchor.constraint(equalToConstant: 30),
            githubButton.widthAnchor.constraint(equalToConstant: 30),
            githubButton.leadingAnchor.constraint(equalTo: twitterButton.trailingAnchor, constant: 20),
            githubButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            
            instagramButton.heightAnchor.constraint(equalTo: twitterButton.heightAnchor, multiplier: 1),
            instagramButton.widthAnchor.constraint(equalTo: twitterButton.widthAnchor, multiplier: 1),
            instagramButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -120),
            instagramButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
