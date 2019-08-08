//
//  ViewController.swift
//  UITextField
//
//  Created by Ника Перепелкина on 07/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.textAlignment = .center
        label.font = label.font.withSize(33)
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        guard textField.text?.isEmpty == false else {return}
        
        if let _ = Int(textField.text!) {
            
            let alert = UIAlertController(title: "Wrong format", message: "Please enter your name", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            
            print("Name format is wrong")
        } else {
            label.text = "Hello, \(textField.text!)! :)"
            textField.text = nil
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

