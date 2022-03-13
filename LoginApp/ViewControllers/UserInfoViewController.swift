//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 13.03.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var aboutMe: UILabel!
    
    var aboutMeInfo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMe.text = aboutMeInfo
    }
    
}
