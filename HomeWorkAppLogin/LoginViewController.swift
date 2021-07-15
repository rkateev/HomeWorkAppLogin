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
    
    private let userName = "Husein"
    private let passWord = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userNameMessage = "Welcome, \(userNameField.text ?? "")!"
        
    }
    
    @IBAction func logInAction() {
        if userNameField.text != userName && passwordField.text != passWord {
            showAlert(title: "Invalid username or password", message: "Please enter correct username and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
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
