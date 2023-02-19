//
//  EducationViewController.swift
//  AboutMe
//
//  Created by Bektemur Mamashayev on 17/02/23.
//

import UIKit

class EducationViewController: UIViewController {

    var education: Education!
    @IBOutlet var universityName: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var facultyLabel: UILabel!
    @IBOutlet var majorLabel: UILabel!
    @IBOutlet var levelLabel: UILabel!
    @IBOutlet var gpaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        universityName.text = education.university
        countryLabel.text = education.country
        facultyLabel.text = education.faculty
        majorLabel.text = education.major
        levelLabel.text = education.level
        gpaLabel.text = education.gpa
    }
}
