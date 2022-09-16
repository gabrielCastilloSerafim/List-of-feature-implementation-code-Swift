//
//  ViewController.swift
//  teste
//
//  Created by Gabriel Castillo Serafim on 15/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        SecondViewController.completion = { text in
            self.label.text = text
        }
            
    }
    
}

