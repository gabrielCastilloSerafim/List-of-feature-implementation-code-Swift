//
//  SecondViewController.swift
//  teste
//
//  Created by Gabriel Castillo Serafim on 15/9/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    static var completion: ((String?) -> Void)?
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        SecondViewController.completion?(textField.text)
        
        dismiss(animated: true)
    }
}
