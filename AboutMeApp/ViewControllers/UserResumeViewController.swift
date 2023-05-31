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
        getUserResumeInfo()
        view.gradientForView()
    }
    
    // MARK: - Private Methods
    private func getUserResumeInfo() {
        name.text = userInfo.person.name
        surname.text = userInfo.person.surname
        age.text = userInfo.person.age
        country.text = userInfo.person.country
        occupation.text = userInfo.person.occupation
    }
}
