//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textDisplay: UITextView!
    
    @IBOutlet weak var nextLineButton: UIButton!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    
    @IBOutlet weak var hiddenText: UITextField!
    
    @IBOutlet weak var quotesDisplay: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentDisplayText()
        self.enterNameTextField.delegate = self
        hiddenText.isHidden = true
        quotesDisplay.text = ""
    }
    
    let poloniusModel = PoloniusMonologueModel()
    var romeoAndJulietModel = RomeoAndJulietModel()
    
    @IBAction func nextLineButtonPressed(_ sender: UIButton) {
        currentDisplayText()
    }
    
    
    func currentDisplayText() {
        poloniusModel.readALine()
        textDisplay.text = poloniusModel.currentLineText
    }
    

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        guard let enteredName = enterNameTextField.text else {
            return false
        }
        switch romeoAndJulietModel.name(enteredName) {
        case .romeo:
            for quote in romeoAndJulietModel.personQuotes {
                quotesDisplay.text.append(quote + "\n")
            }
        case .benvolio:
            for quote in romeoAndJulietModel.personQuotes {
                quotesDisplay.text.append(quote + "\n")
            }
        case .mercutio:
            for quote in romeoAndJulietModel.personQuotes {
                quotesDisplay.text.append(quote + "\n")
            }
        case .invalid:
            hiddenText.text = "Invalid Name"
            hiddenText.isHidden = false
        }
        return true
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        enterNameTextField.text = ""
        hiddenText.isHidden = true
        quotesDisplay.text = ""
    }
}

