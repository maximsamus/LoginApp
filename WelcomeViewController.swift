//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var nameOfUser: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(nameOfUser ?? "")!"
    }
    
    @IBAction func backButton() {
        dismiss(animated: true)
    }
}
