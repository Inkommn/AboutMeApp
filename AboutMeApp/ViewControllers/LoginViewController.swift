//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 22.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let userLoginData = User.getInformationAboutUser()
    
    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardAppearSetup()
        gradientForView()
        
        // удалить потом log pass
        usernameTF.text = "User"
        passwordTF.text = "Password"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        guard usernameTF.text == userLoginData.login,
              passwordTF.text == userLoginData.password
        else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your Username is \(userLoginData.login) 😉")
        : showAlert(title: "Oops!", message: "Your Password is \(userLoginData.password) 😉")
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    //  MARK: - Private methods
    private func keyboardWillShow(sender: Notification) {
        view.frame.origin.y = -150
    }
    
    private func keyboardWillHide(sender: Notification) {
        view.frame.origin.y = 0
    }
    
    private func keyboardAppearSetup() {
        NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil)
        { notification in self.keyboardWillShow(sender: notification) }
        
        NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil)
        { notification in self.keyboardWillHide(sender: notification) }
    }
    
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

    // MARK: - UIAlert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}






