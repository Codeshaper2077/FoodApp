//
//  TabBarController.swift
//  FoodApp
//
//  Created by user on 07.07.2024.
//

import UIKit

class TabBarController: UITabBarController {
    init(tabBarControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        for tab in tabBarControllers {
            self.addChild(tab)
        }
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        tabBar.backgroundColor = AppColors.background
        tabBar.tintColor = AppColors.accentOrange
        
    }
}
