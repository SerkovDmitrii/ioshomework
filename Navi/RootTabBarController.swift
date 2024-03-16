//
//  RootTabBarController.swift
//  Navi
//
//  Created by Dmitrii on 11.03.2024.
//

import UIKit

final class RootTabbarController: UITabBarController {
    
    let myControllers: [UIViewController]
    
    init(with controllers: [UIViewController]) {
        self.myControllers = controllers
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = controllers.map {
            UINavigationController(rootViewController: $0)
        }
        self.selectedIndex = 1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
    }
}
