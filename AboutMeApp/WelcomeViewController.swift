//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 22.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameInfoOutlet: UILabel!
    
    var userNameInfo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameInfoOutlet.text = userNameInfo
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemIndigo.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
