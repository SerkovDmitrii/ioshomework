//
//  FeedViewController.swift
//  Navi
//
//  Created by Dmitrii on 11.03.2024.
//

import UIKit

class FeedViewController: UIViewController {

    var post = Post(title: "Надпись")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Лента"
        self.view.backgroundColor = .systemRed
        self.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "timer"), tag: 0)
        self.tabBarController?.tabBar.tintColor = UIColor.black
        createPresentButton()
      
    }
    func createPresentButton() {
           let button = UIButton(type: .system)
           button.setTitle("Перейти к посту", for: .normal)
        button.addTarget(self, action: #selector(presentButtonTapped), for: .touchUpInside)
           view.addSubview(button)
        
           button.translatesAutoresizingMaskIntoConstraints = false

           NSLayoutConstraint.activate([
               button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
               button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
               ])
       }
    @objc func presentButtonTapped() {
        
        let vc = PostViewController()
        vc.titlePost = post.title
        vc.textFromFirstVC = "Текст самого поста"
        navigationController?.pushViewController(vc, animated: true)
        }
}

