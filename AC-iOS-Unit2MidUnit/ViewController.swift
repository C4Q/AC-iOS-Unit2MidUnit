//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var displayTextView: UITextView!
    @IBOutlet weak var enterTextField: UITextField!
    @IBOutlet weak var invalidNameLabel: UILabel!
    
    var poloniusModel = PoloniusMonologueModel()
    var randjModel = RomeoAndJulietModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineLabel.text = poloniusModel.getFirstLine()
        enterTextField.delegate = self
    }
    
    @IBAction func nextLinePressed(_ sender: Any) {
            lineLabel.text = poloniusModel.getNextLine()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let nameString = textField.text else {
            invalidNameLabel.isHidden = false
            textField.resignFirstResponder()
            return false
        }
        let returnedTupple:(isValid: Bool, textArray: [String]) = randjModel.isValidName(name: nameString.lowercased())
        if returnedTupple.isValid {
            invalidNameLabel.isHidden = true
            displayTextView.text = randjModel.returnArrayAsText(stringArray: returnedTupple.textArray)
            displayTextView.isHidden = false
        } else {
            invalidNameLabel.isHidden = false
        }
        textField.resignFirstResponder()
        return true
    }
    

    
}

