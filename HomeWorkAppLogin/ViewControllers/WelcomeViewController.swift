//
//  WelcomeViewController.swift
//  HomeWorkAppLogin
//
//  Created by  Husein on 15.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeMessage: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Welcome, \( user.person.name)!"
    }
    
    


}
