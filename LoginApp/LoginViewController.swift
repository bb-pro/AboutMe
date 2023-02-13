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
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeText = userName
    }
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    //MARK: - IB Actions
    @IBAction func LoginButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            passwordTF.text = ""
            let alertController = UIAlertController(
                title: "OOPS🫣",
                message: "The username or password incorrect",
                preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil
            )
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func forgotUsernamePressed() {
        let alertController = UIAlertController(
            title: "👨‍💻",
            message: "The username is \(userName)",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordPressed() {
        let alertController = UIAlertController(
            title: "🔐",
            message: "The password is \(password)",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
    }
}

