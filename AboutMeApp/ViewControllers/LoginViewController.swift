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
    private let userInfo = User.getInformationAboutUser()
    
    // MARK: - UiViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardAppearSetup()
        view.gradientForView()
        
        usernameTF.text = "User"
        passwordTF.text = "Password"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = userInfo
            } else if let navigatorVC = $0 as? UINavigationController {
                let userResumeVC = navigatorVC.topViewController
                guard let userResumeVC = userResumeVC as? UserResumeViewController else { return }
                userResumeVC.user = userInfo
            }
        }
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        guard usernameTF.text == userInfo.login,
              passwordTF.text == userInfo.password
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
        ? showAlert(title: "Oops!", message: "Your Username is \(userInfo.login) 😉")
        : showAlert(title: "Oops!", message: "Your Password is \(userInfo.password) 😉")
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
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

    // MARK: - Background For View
extension UIView {
    func gradientForView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.colors = [
            UIColor.systemTeal.cgColor,
            UIColor.systemPink.cgColor
        ]
        layer.insertSublayer(gradientLayer, at: 0)
    }
}






