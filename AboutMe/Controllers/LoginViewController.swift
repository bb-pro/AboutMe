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
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "goToWelcome", sender: nil)
    }
    @IBAction func forgotUsernamePressed() {
        showAlert(title: "💆🏻‍♂️", message: "The username is \(userName)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "🔐", message: "The password \(password)")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        dismiss(animated: true)
    }
    //MARK: - Private Methods
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

