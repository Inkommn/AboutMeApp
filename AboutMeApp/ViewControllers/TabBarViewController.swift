//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 29.05.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForTabBarController()
        
    }
    
    private func setupForTabBarController() {
        let tabBarAppearnce = UITabBarAppearance()
        tabBarAppearnce.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearnce
        tabBar.scrollEdgeAppearance = tabBarAppearnce
    }
}
