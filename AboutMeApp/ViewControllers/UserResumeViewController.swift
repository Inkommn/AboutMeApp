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
    
    // MARK: - Public Properties
    var user: User!

    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        getUserResumeInfo()
        view.gradientForView()
        title = user.person.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        userBioVC.user = user
    }
    
    // MARK: - Private Methods
    private func getUserResumeInfo() {
        name.text = user.person.name
        surname.text = user.person.surname
        age.text = user.person.age
        
        country.text = user.person.country
        occupation.text = user.person.occupation
    }
}
