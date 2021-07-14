//
//  WelcomeViewController.swift
//  HomeWorkAppLogin
//
//  Created by  Husein on 15.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeMessage: UILabel!
    
    var userNameMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = userNameMessage
        
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    


}
