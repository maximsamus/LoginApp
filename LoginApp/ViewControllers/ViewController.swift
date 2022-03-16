//
//  ViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 09.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userData = User.getData()
    
    //    MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabVC.viewControllers else { return }
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.nameOfUser = userData.userName
            } else if let navigationVC = $0 as? UINavigationController {
                guard let aboutUserVC = navigationVC.topViewController as? UserInfoViewController else { return }
                aboutUserVC.aboutMeInfo = userData.description
                aboutUserVC.myPhoto = userData.myPhoto
            }
        }
    }
    
    @IBAction func loginButton() {
        guard nameTextField.text == userData.userLogin && passwordTextField.text == userData.userPassword else {
            alert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func remindUsername() {
        alert(title: "OOPS!", message: "Your name is User")
    }
    
    @IBAction func remindPassword() {
        alert(title: "OOPS!", message: "Your password is Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: Extension
extension LoginViewController {
    
    private func alert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: Keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButton()
        }
        return true
    }
}

