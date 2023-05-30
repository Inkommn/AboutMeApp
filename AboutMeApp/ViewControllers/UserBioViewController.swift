//
//  UserBioViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 27.05.2023.
//

import UIKit

final class UserBioViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var userBioLabel: UILabel!
    
    // MARK: - Private properties
    private let userInfo = User.getInformationAboutUser()
    
    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientForBackgroud()
        getUserBio()
        
    }
    
    // MARK: - Private Methods
    private func getUserBio() {
        userBioLabel.text = userInfo.person.bio
    }
    
    private func gradientForBackgroud() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        view.layer.insertSublayer(gradientLayer, at: 0)
        gradientLayer.colors = [
            UIColor.systemTeal.cgColor,
            UIColor.systemPink.cgColor
        ]
    }
}
