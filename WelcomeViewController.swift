//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome"
    }
    
    
}
