//
//  ViewController.swift
//  HomeWorkAppLogin
//
//  Created by  Husein on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers .forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func usernameTap() {
        userNameField.autocorrectionType = .no
    }
    
    
    @IBAction func logInAction() {
        if userNameField.text != user.userName && passwordField.text != user.passWord {
            showAlert(title: "Invalid username or password", message: "Please enter correct username and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "Oops!", message: "Your username is \(user.userName)")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Oops!", message: "Your password is \(user.passWord)")
    }
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameField.text = ""
            self.passwordField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
