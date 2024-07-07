//
//  OrderCoordinator.swift
//  FoodApp
//
//  Created by user on 07.07.2024.
//

import UIKit

class OrderCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .blue
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("OrderCoordinator finish")
    }
}
