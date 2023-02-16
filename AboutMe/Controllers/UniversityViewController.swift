//
//  UniversityViewController.swift
//  LoginApp
//
//  Created by Bektemur Mamashayev on 16/02/23.
//

import UIKit

final class UniversityViewController: UIViewController {

    @IBOutlet var universityLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        universityLogo.layer.cornerRadius = universityLogo.frame.width / 2
       
    }
}
