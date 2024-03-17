//
//  TabBarController.swift
//  testEffectiveMobile
//
//  Created by Илья Акулов on 15.03.2024.
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
        super.viewDidLoad()
        
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: tabBar.frame.size.width, height: 0.5))
        lineView.backgroundColor = AppColor.grey
        tabBar.addSubview(lineView)
//        tabBar.layer.borderColor = UIColor.lightGray.cgColor
        tabBar.backgroundColor = AppColor.background
        tabBar.tintColor = AppColor.blue
    }
}
