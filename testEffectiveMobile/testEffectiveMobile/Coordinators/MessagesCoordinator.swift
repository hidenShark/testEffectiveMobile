//
//  MessagesCoordinator.swift
//  testEffectiveMobile
//
//  Created by Илья Акулов on 15.03.2024.
//

import UIKit


class MessagesCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = AppColor.background
        navigationController?.pushViewController(vc, animated: true)
    }
}
