//
//  AppDelegate.swift
//  SignIn
//
//  Created by huruji on 2022/6/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window:UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.orange
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        return true
    }

}

