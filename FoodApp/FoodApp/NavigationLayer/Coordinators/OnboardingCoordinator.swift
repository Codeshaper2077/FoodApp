//
//  OnboardingCoordinator.swift
//  FoodApp
//
//  Created by user on 06.07.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("OnboardingCoordinator finish")
    }
}

