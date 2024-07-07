//
//  ViewController.swift
//  FoodApp
//
//  Created by user on 05.07.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let label = UILabel()
        label.text = "Hello World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200.0),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20.0)
        ])
        
        label.font = UIFont.Roboto.bold.size(of: 40.0)
        label.textColor = AppColors.accentOrange
        
        view.backgroundColor = AppColors.background
        
    }


}

