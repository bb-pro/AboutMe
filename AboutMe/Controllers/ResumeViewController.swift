//
//  ResumeViewController.swift
//  LoginApp
//
//  Created by Bektemur Mamashayev on 16/02/23.
//

import UIKit

final class ResumeViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImage.layer.cornerRadius = userImage.frame.width / 2
        
        nameLabel.text = User.getPersonData().name
        ageLabel.text = User.getPersonData().age
        countryLabel.text = User.getPersonData().country
        cityLabel.text = User.getPersonData().city
        educationLabel.text = User.getPersonData().education
        hobbyLabel.text = User.getPersonData().hobby
    }
}
