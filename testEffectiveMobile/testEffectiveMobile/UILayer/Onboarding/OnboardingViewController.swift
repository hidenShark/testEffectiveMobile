//
//  OnboardingViewController.swift
//  testEffectiveMobile
//
//  Created by Илья Акулов on 16.03.2024.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    init(pages: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        for page in pages {
            self.addChild(page)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }
    

}

