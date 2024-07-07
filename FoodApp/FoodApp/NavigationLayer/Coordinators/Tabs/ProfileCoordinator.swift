//
//  ProfileCoordinator.swift
//  FoodApp
//
//  Created by user on 07.07.2024.
//

import UIKit

class ProfileCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .darkGray
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("ProfileCoordinator finish")
    }
}
