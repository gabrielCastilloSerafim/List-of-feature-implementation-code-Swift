//
//  TestViewCOntroller.swift
//  Test custom log in
//
//  Created by Gabriel Castillo Serafim on 19/10/22.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let isLoggedIn = false
        let homeViewController = HomeViewController()
            viewControllers = [homeViewController]
        if isLoggedIn {
            
        } else {
            perform(#selector(showLoginController), with:nil, afterDelay: 0.01)
        }
    }
    
    @objc func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true) {
            //DO SOMETHING
        }
    }
}


