//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 22.05.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var forgotUserNameBT: UIButton!
    @IBOutlet var forgotPasswordBT: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil)
        { notification in self.keyboardWillShow(sender: notification) }
        
        NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil)
        { notification in self.keyboardWillHide(sender: notification) }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? WelcomeViewController else { return }
        loginVC.userNameInfo = usernameTF.text
    }

    //  MARK: - Keyboard Setup
    private func keyboardWillShow(sender: Notification) {
        view.frame.origin.y = -150
    }
    
    private func keyboardWillHide(sender: Notification) {
        view.frame.origin.y = 0
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }

    
    // MARK: - IBActions
    @IBAction func logInButtonDidTapped() {
        if usernameTF.text == "User" && passwordTF.text == "Password" {
            return
        } else {
           showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButtonDidTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your Username is User 😉")
    }
    
    @IBAction func forgotPasswordButtonDidTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password 😉")
    }

}

    // MARK: - UIAlert Controller
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
    }
}






