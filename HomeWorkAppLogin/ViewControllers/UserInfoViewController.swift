//
//  UserInfoViewController.swift
//  HomeWorkAppLogin
//
//  Created by  Husein on 20.07.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    @IBOutlet weak var textAboutUser: UILabel!
    
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        textAboutUser.text = user.person.hobby
    }

}
