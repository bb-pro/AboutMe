//
//  ViewController.swift
//  LoginApp
//
//  Created by Bektemur Mamashayev on 13/02/23.
//

import UIKit

final class LoginViewController: UIViewController {
  
    //MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: - Private Properties
    private let userName = "User"
    private let password = "1111"
    
    //MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.welcomeText = userName
    }
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IB Actions
    @IBAction func LoginButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            let alertController = UIAlertController(
                title: "Oops",
                message: "The username or password is incorrect",
                preferredStyle: .alert
            )
            let action = UIAlertAction(title: "OK", style: .default) { _ in
                self.userNameTF.text = ""
                self.passwordTF.text = ""
            }
            alertController.addAction(action)
            present(alertController, animated: true)
        }
    }
    @IBAction func forgotUsernamePressed() {
        createAlert(title: "👨‍💻", message: "The username is \(userName)")
    }
    
    @IBAction func forgotPasswordPressed() {
        createAlert(title: "🔐", message: "The password is \(password)")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    //MARK: - Private Methods
    private func createAlert(title: String, message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
    
}

