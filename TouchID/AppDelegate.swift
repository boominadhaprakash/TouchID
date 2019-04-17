//
//  AppDelegate.swift
//  TouchID
//
//  Created by Boominadha Prakash on 12/04/17.
//  Copyright © 2017 Boomi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = {
        let w = UIWindow(frame: UIScreen.main.bounds)
        w.backgroundColor = .white
        w.makeKeyAndVisible()
        return w
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setUpRootScene()
        return true
    }

}

extension AppDelegate {
    func setUpRootScene() {
        let vc = ViewController()
        let nv = UINavigationController(rootViewController: vc)
        window?.rootViewController = nv
    }
}
