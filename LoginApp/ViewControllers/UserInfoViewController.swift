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
    var myPhoto: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMe.text = aboutMeInfo
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.photo = myPhoto
    }
    
}
