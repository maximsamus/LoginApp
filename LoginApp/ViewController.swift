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
    
    let user = "User"
    let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.nameOfUser = nameTextField.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    
    
    @IBAction func loginButton() {
        
        if nameTextField.text == user && passwordTextField.text == password {
            performSegue(withIdentifier: "1", sender: self)
        }
    }
    
    
    
    
    //    @IBAction func loginButton() {
    //                if nameTextField.text == user && passwordTextField.text == password {
    //                    performSegue(withIdentifier: "1", sender: self)
    //                }
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
