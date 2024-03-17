//
//  OnboardingCoordinator.swift
//  testEffectiveMobile
//
//  Created by Илья Акулов on 16.03.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    // MARK: - Properties
    private let factory = SceneFactory.self
    
    // MARK: - Methods
    
    override func start() {
        showOnboarding()
    }
    
}

// MARK: - Navigation
private extension OnboardingCoordinator {
    func showOnboarding() {
        let viewController = factory.makeOnboardingScene(coordinator: self)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

