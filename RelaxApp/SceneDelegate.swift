//
//  SceneDelegate.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 14.04.22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let scene = (scene as? UIWindowScene) else { return }
                window = UIWindow(windowScene: scene)
                window?.makeKeyAndVisible()
        let firstVC = MainController()
        let secondVC = LoginViewController()
        let thirdVC = HomeViewController()
        let fourthVC = ProfileViewController()
        let navigationController = UINavigationController(rootViewController: firstVC)
        
        window?.rootViewController = navigationController
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
         }

    func sceneWillResignActive(_ scene: UIScene) {
          }

    func sceneWillEnterForeground(_ scene: UIScene) {
         }

    func sceneDidEnterBackground(_ scene: UIScene) {
          }


}

