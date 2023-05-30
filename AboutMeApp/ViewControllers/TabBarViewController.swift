//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 29.05.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForTabBarController()
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 1 {
            item.title = userInfo.person.name
        }
    }
    
    // MARK: - Private properties
    private let userInfo = User.getInformationAboutUser()
    
    // MARK: - Private methods
    private func setupForTabBarController() {
        let tabBarAppearnce = UITabBarAppearance()
        tabBarAppearnce.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearnce
        tabBar.scrollEdgeAppearance = tabBarAppearnce
    }
}
