//
//  SceneDelegate.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        // UIWindowのインスタンスを作成します。
        let window = UIWindow(windowScene: windowScene)
        // UINavigationControllerのインスタンスを作成します。
        let navigationController = UINavigationController()
        
        let model = SecondViewControllerModel()
        // ViewControllerのインスタンスを作成します。
        let viewController = SecondViewController(model: model)
        // navigationControllerのrootViewControllerをviewControllerに設定します。
        navigationController.viewControllers = [viewController]
        // windowのrootViewControllerをnavigationControllerに設定します。
        window.rootViewController = navigationController
        // このウィンドウをシーンのウィンドウとして保存します。
        self.window = window
        // ウィンドウを表示します。
        window.makeKeyAndVisible()
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

