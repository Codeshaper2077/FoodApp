//
//  AppCoordinator.swift
//  FoodApp
//
//  Created by user on 06.07.2024.
//

import UIKit

class AppCoordinator: Coordinator {
    
    
    override func start() {
//        let vc = ViewController()
//        navigationController?.pushViewController(vc, animated: true)
//        showOnboardingFlow()
        showMainFlow()
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}
// MARK: - Navigation methods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }
    func showMainFlow() {
        guard let navigationController = navigationController else { return }
        
        // MARK: - Home
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage.init(named: "house"), tag: 0)
        homeCoordinator.finishDelegate = self
        homeCoordinator.start()
        // MARK: - Order
        let orderNavigationController = UINavigationController()
        let orderCoordinator = OrderCoordinator(type: .order, navigationController: orderNavigationController)
        orderNavigationController.tabBarItem = UITabBarItem(title: "Order", image: UIImage.init(named: "shippingbox"), tag: 1)
        orderCoordinator.finishDelegate = self
        orderCoordinator.start()
        // MARK: - List
        let listNavigationController = UINavigationController()
        let listCoordinator = ListCoordinator(type: .list, navigationController: listNavigationController)
        listNavigationController.tabBarItem = UITabBarItem(title: "List", image: UIImage.init(named: "list.clipboard"), tag: 2)
        listCoordinator.finishDelegate = self
        listCoordinator.start()
        // MARK: - Profile
        let profileNavigationController = UINavigationController()
        let profileCoordinator = ProfileCoordinator(type: .profile, navigationController: profileNavigationController)
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage.init(named: "person.crop.circle"), tag: 3)
        profileCoordinator.finishDelegate = self
        profileCoordinator.start()
        
        // MARK: - adding Coordinators
        addChildCoordinator(homeCoordinator)
        addChildCoordinator(orderCoordinator)
        addChildCoordinator(listCoordinator)
        addChildCoordinator(profileCoordinator)
        
        // MARK: - init TabBarController
        let tabBarControllers = [homeNavigationController, orderNavigationController, listNavigationController, profileNavigationController]
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        navigationController.pushViewController(tabBarController, animated: true)
    }
}
extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinators: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinators)
        switch childCoordinators.type {
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        }
    }
}
