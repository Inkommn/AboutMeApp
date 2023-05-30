//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 29.05.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    // MARK: - @IBOutlets
    @IBOutlet var tabBarButtons: UITabBar!
    
    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForTabBarController()
    }
    
    // MARK: - Private properties
    private let userInfo = User.getInformationAboutUser()
    
    // MARK: - Private methods
    private func setupForTabBarController() {
        let tabBarAppearnce = UITabBarAppearance()
        tabBarAppearnce.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearnce
        tabBar.scrollEdgeAppearance = tabBarAppearnce
        
        tabBarButtons.items?[1].title = userInfo.person.name
    }
}
