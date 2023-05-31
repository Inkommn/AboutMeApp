//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 22.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var welcomeUserLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = user.person.name
        view.gradientForView()
    }
}

