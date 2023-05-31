//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 22.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var welcomeUser: UILabel!
    
    // MARK: - Private properties
    private let userInfo = User.getInformationAboutUser()
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = userInfo.person.name
        view.gradientForView()
    }
}

