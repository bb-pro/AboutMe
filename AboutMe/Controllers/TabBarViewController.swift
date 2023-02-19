//
//  TabBarViewController.swift
//  AboutMe
//
//  Created by Bektemur Mamashayev on 16/02/23.
//

import UIKit

final class TabBarViewController: UITabBarController {
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.welcomeText = user.person.name
        } else if let resumeVC = segue.destination as? ResumeViewController {
            resumeVC.person = user.person
        }
    }
}
