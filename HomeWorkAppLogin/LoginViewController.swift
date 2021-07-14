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
        welcomeVC.userNameMessage = "Welcome, \(userNameField.text ?? "user")!"
        
    }
    
    @IBAction func logInAction() {
        
    }
    

}

