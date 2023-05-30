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
        gradientForView()
    }
    
    // MARK: - Private Methods
    private func gradientForView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.colors = [
            UIColor.systemTeal.cgColor,
            UIColor.systemPink.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}

