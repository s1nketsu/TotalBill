//
//  SceneDelegate.swift
//  1WindowNoStoryboardApp
//
//  Created by Полищук Александр on 20.08.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let totalBillView = TotalBillView()
        let personsView = PersonsView()
        let tipsView = TipsView()
        let vc = ViewController(totalBillView: totalBillView, personsView: personsView, tipsView: tipsView)
        window?.rootViewController = vc
        window?.overrideUserInterfaceStyle = .light
        window?.makeKeyAndVisible()
    }
}
