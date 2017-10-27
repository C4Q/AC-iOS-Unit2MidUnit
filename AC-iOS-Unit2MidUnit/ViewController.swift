//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var monologueModel = PoloniusMonologueModel()
    var romeoModel = RomeoAndJulietModel()
    
    @IBOutlet weak var displayMonologue: UITextView!
    
    
    @IBOutlet weak var userInput: UITextField!
    
    
    @IBAction func nextLineButton(_ sender: UIButton) {
        //      displayMonologue.text = monologueModel.textArr[index]
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userInput.delegate = self
    }
    
    func textField(_ textFieldToChange: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.isEmpty {
            return true
        }
        if let text = UITextField.text {
        if text == "Romeo" || text == " Benvolio" || text == "Mercutio" {
            return true
        }
        else {
            return false
        }
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        guard let text = userInput.text else {
            return true
        }
        textField.resignFirstResponder()
        textField.text = " "
        return true
    }
    
    
}

