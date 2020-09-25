//
//  SceneDelegate.swift
//  LootLogger
//
//  Created by Jamario Davis on 9/24/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let _ = (scene as? UIWindowScene) else { return }
        
        // Create an ItemStore
        let itemStore = ItemStore()
        
        // Access the ItemsViewController and set its item store
        let itemsController = window!.rootViewController as! ItemsViewController
        itemsController.itemStore = itemStore 
    }

}

