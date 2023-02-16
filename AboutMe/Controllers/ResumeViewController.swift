//
//  ResumeViewController.swift
//  LoginApp
//
//  Created by Bektemur Mamashayev on 16/02/23.
//

import UIKit

final class ResumeViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.layer.cornerRadius = userImage.frame.width / 2

    }

}
