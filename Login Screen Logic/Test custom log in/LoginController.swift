//
//  LoginController.swift
//  Test custom log in
//
//  Created by Gabriel Castillo Serafim on 19/10/22.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        HomeViewController.isLogged = true
        self.dismiss(animated: true)
    }
}
