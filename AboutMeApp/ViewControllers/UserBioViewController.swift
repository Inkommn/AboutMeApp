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
        getUserBio()
        view.gradientForView()
    }
    
    // MARK: - Private Methods
    private func getUserBio() {
        userBioLabel.text = userInfo.person.bio
    }
}
