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
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        getUserBio()
        view.gradientForView()
        title = "\(user.person.fullName) Bio"
    }
    
    // MARK: - Private Methods
    private func getUserBio() {
        userBioLabel.text = user.person.bio
    }
}
