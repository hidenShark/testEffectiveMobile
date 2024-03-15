//
//  AppCoordinator.swift
//  testEffectiveMobile
//
//  Created by Илья Акулов on 15.03.2024.
//

import UIKit

class AppCoordinator: Coordinator {
    
    private let factory = SceneFactory.self
    
    override func start() {
        showMainFlow()
    }
    
}

// MARK: - Navigation method

private extension AppCoordinator {
    func showMainFlow() {
        guard let navigationController = navigationController else { return }
        let tabBarController = factory.makeMainFlow(coordinator: self)
        navigationController.pushViewController(tabBarController, animated: true)
    }
}
