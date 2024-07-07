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
        showOnboardingFlow()
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
