//
//  HomeCoordinator.swift
//  FoodApp
//
//  Created by user on 07.07.2024.
//

import UIKit

class HomeCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .magenta
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("HomeCoordinator finish")
    }
    
}
