//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 22.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeUser: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = username
        gradientForView()
    }
    
    // MARK: - Private Methods
    private func gradientForView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemIndigo.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}

