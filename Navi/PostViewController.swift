//
//  PostViewController.swift
//  Navi
//
//  Created by Dmitrii on 11.03.2024.
//

import UIKit

class PostViewController: UIViewController {
    var textFromFirstVC = "Переход"
        var titlePost: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titlePost
        self.view.backgroundColor = .white
//        createCloseButton()
        createTestLabel()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(showInfo))
        

    }
//    func createCloseButton() {
//        let button = UIButton(type: .system)
//        button.setTitle("Закрыть текущий экран", for: .normal)
//        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
//        view.addSubview(button)
//
//        button.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
//            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
//        ])
//    }

    func createTestLabel() {
        let label = UILabel(frame: CGRect(x: 0, y: 100, width: 300, height: 100))
        label.text = textFromFirstVC
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
        ])
    }

    @objc func closeButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    @objc func showInfo() {
        let info = InfoViewController()
        present(info, animated: true, completion: nil)
    }
}

