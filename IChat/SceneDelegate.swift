//
//  SceneDelegate.swift
//  IChat
//
//  Created by Eugene Kiselev on 01.05.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        makeRootController(for: scene)
    }
}

extension SceneDelegate {
    private func makeRootController(for scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = AuthViewController()
        window?.makeKeyAndVisible()
    }
}

