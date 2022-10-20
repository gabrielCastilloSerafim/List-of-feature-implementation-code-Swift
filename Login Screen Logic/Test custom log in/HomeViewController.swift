//
//  HomeViewController.swift
//  Test custom log in
//
//  Created by Gabriel Castillo Serafim on 19/10/22.
//

import UIKit

class HomeViewController: UIViewController {

    static var isLogged = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if !Self.isLogged {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "Login") as! LoginController
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "navController") as! UITabBarController
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true)
            
        }
        
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
    }
    
}
