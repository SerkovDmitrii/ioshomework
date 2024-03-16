//
//  InfoViewController.swift
//  Navi
//
//  Created by Dmitrii on 11.03.2024.
//

import UIKit
class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        createNextButton()
        
        
    }
    func createNextButton() {
        let button = UIButton(type: .system)
        button.setTitle("AlarmButton", for: .normal)
        button.addTarget(self, action: #selector(presentButtonTapped), for: .touchUpInside)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        ])
    }
    @objc func presentButtonTapped() {
        let alertController: UIAlertController = {
            let label = UIAlertController()
            label.title = "Сообщение?"
            
            return label
        }()

    let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
        let yesAction = UIAlertAction(title: "Да", style: .default) { (action) -> Void in
            print("Итоговое сообщение")
        }
        
        alertController.addAction(yesAction)
        alertController.addAction(cancel)
        
        
        self.present(alertController, animated: true, completion: nil)
        
    }
}
