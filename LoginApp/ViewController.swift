//
//  ViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//    }


    
    @IBAction func remindUsername() {
        showUsername(title: "OOPS!", message: "Your name is User")
    }
    
    @IBAction func remindPassword() {
        showPassword(title: "OOPS!", message: "Your password is Password")
    }
    
}


extension ViewController {
    
    private func showUsername(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func showPassword(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//            self.passwordTextField = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
