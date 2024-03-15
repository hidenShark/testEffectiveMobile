//
//  SceneFactory.swift
//  testEffectiveMobile
//
//  Created by Илья Акулов on 15.03.2024.
//

import UIKit

struct SceneFactory {
    
    // MARK: - Main flow
    
    static func makeMainFlow(coordinator: AppCoordinator) -> TabBarController {
        
        let searchNavigationController = UINavigationController()
        searchNavigationController.tabBarItem = UITabBarItem(title: "Поиск", image: (UIImage(named: "search")) , tag: 0)
        let searchCoordinator = SearchCoordinator(navigationController: searchNavigationController)
        searchCoordinator.start()
        
        let favoritesNavigationController = UINavigationController()
        favoritesNavigationController.tabBarItem = UITabBarItem(title: "Избранное", image: (UIImage(named: "favorites")), tag: 1)
        let favoritesCoordinator = FavoritesCoordinator(navigationController: favoritesNavigationController)
        favoritesCoordinator.start()
        
        let responsesNavigationController = UINavigationController()
        responsesNavigationController.tabBarItem = UITabBarItem(title: "Отклики", image: (UIImage(named: "responses")), tag: 2)
        let responsesCoordinator = ResponsesCoordinator(navigationController: responsesNavigationController)
        responsesCoordinator.start()
        
        let massagesNavigationController = UINavigationController()
        massagesNavigationController.tabBarItem = UITabBarItem(title: "Сообщения", image: (UIImage(named: "messages")), tag: 3)
        let massagesCoordinator = MessagesCoordinator(navigationController: massagesNavigationController)
        massagesCoordinator.start()
        
        let profileNavigationController = UINavigationController()
        profileNavigationController.tabBarItem = UITabBarItem(title: "Профиль", image: (UIImage(named: "profile")), tag: 4)
        let profileCoordinator = ProfileCoordinator(navigationController: profileNavigationController)
        profileCoordinator.start()
        
        coordinator.addChildCoordinator(searchCoordinator)
        coordinator.addChildCoordinator(favoritesCoordinator)
        coordinator.addChildCoordinator(responsesCoordinator)
        coordinator.addChildCoordinator(massagesCoordinator)
        coordinator.addChildCoordinator(profileCoordinator)
        
        let tabBarControllers = [searchNavigationController, favoritesNavigationController, responsesNavigationController, massagesNavigationController, profileNavigationController]
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        return tabBarController
    }

}
