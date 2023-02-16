//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Bektemur Mamashayev on 13/02/23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeText ?? "") !"
    }
    

}
