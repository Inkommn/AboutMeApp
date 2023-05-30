//
//  UserResumeViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 27.05.2023.
//

import UIKit

final class UserResumeViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var age: UILabel!
    
    @IBOutlet var country: UILabel!
    @IBOutlet var occupation: UILabel!

    // MARK: - Private properties
    private let userInfo = User.getInformationAboutUser()
    
    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientForView()
        getUserResumeInfo()
    }
    
    // MARK: - Private Methods
    private func getUserResumeInfo() {
        name.text = userInfo.person.name
        surname.text = userInfo.person.surname
        age.text = userInfo.person.age
        country.text = userInfo.person.country
        occupation.text = userInfo.person.occupation
    }
    
    private func setupGradientForView() {
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
