//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let userData = User.getData()
    var nameOfUser: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userData.userName)!"
    }
}
