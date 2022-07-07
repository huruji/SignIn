//
//  HomeViewController.swift
//  SignIn
//
//  Created by huruji on 2022/7/6.
//

import UIKit
import SafariServices

class HomeViewController: UIViewController {
    let viewTitle:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Reader"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 28)
        return label
    }()
    
    let nameLabel:UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.text = "John\nLee Dumas"
        name.textColor = .black
        name.numberOfLines = 0
        name.font = UIFont.boldSystemFont(ofSize: 33)
        return name
    }()
    
    let verifiedLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Verified Blogger"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let approvalImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "approval")
        return img
    }()
    
    let followersLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Followers"
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    let numberOfFollowers:UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4.1M"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let followingLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Following"
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let numberOfFollowing:UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let blogLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Blogs"
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let numberOfblog:UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.8K"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let descriptionLabel:UITextView = {
        let des = UITextView()
        des.translatesAutoresizingMaskIntoConstraints = false
        des.text = "John started with making podcasts for inspiring new entrepreneurs and now sells his own products, mostly online courses and ebooks. John has produced over 1900 episodes of podcasts where he interviews aspiring and successful entrepreneurs. You can learn a lot about running your own online business in the podcasts.\nJohn is the pioneer of podcasting among entrepreneurs. If you can talk, podcasts can be a fun way to make money online. The advertisement money on podcasts is really good. You can also learn a great deal from the interviews. It’s a win-win tactic. You create your content while you learn from the experts."
        des.font = UIFont.boldSystemFont(ofSize: 18)
        des.isEditable = false
        des.isSelectable = false
        des.isScrollEnabled = true
        return des
    }()
    
    let exploreBlogsButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Explore Blogs", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.addTarget(self, action: #selector(exploreButtonAction), for: .touchUpInside)
        return btn
    }()
    
    let textFieldLineView:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .darkGray
        return label
    }()
    
    let signOutButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign Out", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.addTarget(self, action: #selector(signOutButtonAction), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackgroundImage()
        
        setupView()
        addConstraints()
    }
    
    func addBackgroundImage() {
        let image = UIImageView(frame: UIScreen.main.bounds)
        image.image = UIImage(named: "forthbakground")
        image.contentMode = .scaleAspectFill
        view.insertSubview(image, at: 0)
    }
    func setupView(){
        view.addSubview(viewTitle)
        view.addSubview(nameLabel)
        view.addSubview(verifiedLabel)
        view.addSubview(approvalImage)
        view.addSubview(followersLabel)
        view.addSubview(numberOfFollowers)
        view.addSubview(followingLabel)
        view.addSubview(numberOfFollowing)
        view.addSubview(blogLabel)
        view.addSubview(numberOfblog)
        view.addSubview(descriptionLabel)
        view.addSubview(exploreBlogsButton)
        view.addSubview(textFieldLineView)
        view.addSubview(signOutButton)
    }
    
    func addConstraints() {
        let constraints:[NSLayoutConstraint] = [
            viewTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            viewTitle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            
            nameLabel.topAnchor.constraint(equalTo: viewTitle.topAnchor, constant: 170),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant:  14),
            
            verifiedLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 90),
            verifiedLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            
            approvalImage.centerYAnchor.constraint(equalTo: verifiedLabel.centerYAnchor),
            approvalImage.leadingAnchor.constraint(equalTo: verifiedLabel.trailingAnchor, constant: 4),
            approvalImage.heightAnchor.constraint(equalToConstant: 20),
            approvalImage.widthAnchor.constraint(equalToConstant: 20),
            
            followersLabel.topAnchor.constraint(equalTo: verifiedLabel.topAnchor, constant: 60),
            followersLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            
            numberOfFollowers.topAnchor.constraint(equalTo: followersLabel.topAnchor, constant: 30),
            numberOfFollowers.leadingAnchor.constraint(equalTo: followersLabel.leadingAnchor),
            
            followingLabel.topAnchor.constraint(equalTo: followersLabel.topAnchor),
            followingLabel.leadingAnchor.constraint(equalTo: followersLabel.leadingAnchor, constant: 130),
            
            numberOfFollowing.topAnchor.constraint(equalTo: numberOfFollowers.topAnchor),
            numberOfFollowing.leadingAnchor.constraint(equalTo: followingLabel.leadingAnchor),
            
            blogLabel.topAnchor.constraint(equalTo: followersLabel.topAnchor),
            blogLabel.leadingAnchor.constraint(equalTo: followingLabel.leadingAnchor, constant: 130),
            
            numberOfblog.topAnchor.constraint(equalTo: numberOfFollowers.topAnchor),
            numberOfblog.leadingAnchor.constraint(equalTo: blogLabel.leadingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: numberOfFollowers.topAnchor, constant: 50),
            descriptionLabel.leadingAnchor.constraint(equalTo: viewTitle.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -14),
            descriptionLabel.bottomAnchor.constraint(equalTo: exploreBlogsButton.topAnchor, constant: -10),
            
            exploreBlogsButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            exploreBlogsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            
            textFieldLineView.topAnchor.constraint(equalTo: exploreBlogsButton.topAnchor, constant: 35),
            textFieldLineView.leadingAnchor.constraint(equalTo: viewTitle.leadingAnchor),
            textFieldLineView.widthAnchor.constraint(equalTo: exploreBlogsButton.widthAnchor, constant: 8),
            textFieldLineView.heightAnchor.constraint(equalToConstant: 2),
            
            signOutButton.bottomAnchor.constraint(equalTo: exploreBlogsButton.bottomAnchor),
            signOutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -14),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func signOutButtonAction() {
        let signOutViewController = ViewController()
        navigationController?.pushViewController(signOutViewController, animated: true)
    }
    
    @objc func exploreButtonAction() {
        showSafariVC(for: "https://www.eofire.com/")
    }
    
    func showSafariVC(for url: String) {
           guard let url = URL(string: url) else {
               return
           }
           let safariVC = SFSafariViewController(url: url)
           present(safariVC, animated: true)
       }
}
