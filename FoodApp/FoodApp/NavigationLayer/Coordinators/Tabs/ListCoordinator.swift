//
//  ListCoordinator.swift
//  FoodApp
//
//  Created by user on 07.07.2024.
//

import UIKit

class ListCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .brown
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("ListCoordinator finish")
    }
}
