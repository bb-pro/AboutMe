//
//  ResumeViewController.swift
//  LoginApp
//
//  Created by Bektemur Mamashayev on 16/02/23.
//

import UIKit

final class ResumeViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    
    var person: Person!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImage.layer.cornerRadius = userImage.frame.width / 2
        nameLabel.text = person.name
        ageLabel.text = person.age
        countryLabel.text = person.country
        cityLabel.text = person.city
        educationLabel.text = person.education
        hobbyLabel.text = person.hobby
    }
}
