//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentLine.text = model.initalLine()
        self.nameInput.delegate = self
    }

    var model = PoloniusMonologueModel()
    var model2 = RomeoAndJulietModel()
    
    @IBOutlet weak var currentLine: UILabel!

    
    
    @IBAction func nextLine(_ sender: UIButton) {
        currentLine.text = model.setCurrentLine()
        
    }
    
    
    @IBOutlet weak var nameInput: UITextField!
    
    
    @IBOutlet weak var characterLines: UITextView!
    
    
    @IBOutlet weak var invalidName: UILabel!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if range.upperBound - range.lowerBound == 0 && string == "" && textField.text?.count != 0 {
           return true
        }
            return true
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else {
            return false
        }
        guard model2.validChars.contains(text)
            else {
            invalidName.isHidden = false
            return false
        }
        switch text {
        case model2.validChars[0] :
            characterLines.text = model2.romeoText
        case model2.validChars[1] :
            characterLines.text = model2.mercutioText
        case model2.validChars[3] :
            characterLines.text = model2.benvolioText
        default :
            textField.resignFirstResponder()
            return false
           
            
        }
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    
    
    
    
}

