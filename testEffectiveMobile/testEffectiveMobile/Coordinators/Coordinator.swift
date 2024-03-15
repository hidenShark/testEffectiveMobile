//
//  Coordinator.swift
//  testEffectiveMobile
//
//  Created by Илья Акулов on 15.03.2024.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
    
    var childCoordinators: [CoordinatorProtocol] { get set }
    var navigationController: UINavigationController? { get set }
    
    func start()
}

extension CoordinatorProtocol {
    func addChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators.append(childCoordinator)
    }
}

protocol TabBarCoordinator: AnyObject, CoordinatorProtocol {
    var tabBarController: UITabBarController? { get set }
}

class Coordinator: CoordinatorProtocol {
    var childCoordinators: [CoordinatorProtocol]
    var navigationController: UINavigationController?
    
    init(childCoordinators: [CoordinatorProtocol] = [CoordinatorProtocol](), navigationController: UINavigationController? = nil) {
        self.childCoordinators = childCoordinators
        self.navigationController = navigationController
    }
    
    func start() {
        print("Coordinator Start")
    }
}
