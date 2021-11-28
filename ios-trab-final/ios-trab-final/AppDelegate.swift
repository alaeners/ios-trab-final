//
//  AppDelegate.swift
//  ios-trab-final
//
//  Created by Alaene Sousa on 16/11/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        window?.makeKeyAndVisible()
            
        let vm = ViewModel()
        let vc = InitialViewController(vm: vm)
        let rootNC = UINavigationController(rootViewController: vc)
        window?.rootViewController = rootNC
        window?.backgroundColor = .white
        
        return true
    }
}

