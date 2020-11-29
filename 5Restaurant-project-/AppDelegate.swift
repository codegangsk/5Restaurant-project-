//
//  AppDelegate.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/19.
//

import UIKit

@main
class AppDelegate: UIResponder {}

extension AppDelegate: UIApplicationDelegate {

}   

extension AppDelegate {
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

