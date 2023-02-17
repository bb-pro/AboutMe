//
//  EducationViewController.swift
//  AboutMe
//
//  Created by Bektemur Mamashayev on 17/02/23.
//

import UIKit

class EducationViewController: UIViewController {

    
    @IBOutlet var universityName: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var facultyLabel: UILabel!
    @IBOutlet var majorLabel: UILabel!
    @IBOutlet var levelLabel: UILabel!
    @IBOutlet var gpaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        universityName.text = User.getEducationData().university
        countryLabel.text = User.getEducationData().country
        facultyLabel.text = User.getEducationData().faculty
        majorLabel.text = User.getEducationData().major
        levelLabel.text = User.getEducationData().level
        gpaLabel.text = User.getEducationData().gpa
    }
}
