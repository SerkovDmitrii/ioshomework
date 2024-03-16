//
//  ProfileViewController.swift
//  Navi
//
//  Created by Dmitrii on 11.03.2024.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        self.title = "Профиль"
        self.view.backgroundColor = .systemBlue
        self.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "envelope"), tag: 1)
        self.tabBarController?.tabBar.tintColor = UIColor.black
    }
}
