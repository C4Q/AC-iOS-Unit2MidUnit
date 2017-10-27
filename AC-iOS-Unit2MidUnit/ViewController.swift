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
        poloniusTextToShowLabel.text = modelPolonius.displayText()

        self.romeoTextField.delegate = self
        invalidNameLabel.isHidden = true
        romeoTextView.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    let modelPolonius = PoloniusMonologueModel()
    let modelRomeo = RomeoAndJulietModel()
    
    
    @IBOutlet weak var invalidNameLabel: UILabel!
    @IBOutlet weak var poloniusTextToShowLabel: UILabel!
    @IBOutlet weak var romeoTextField: UITextField!
    @IBOutlet weak var romeoTextView: UITextView!
    
    // POLONIUS
    @IBAction func nextLineButtonPressed(_ sender: UIButton) {
        modelPolonius.increaseCounter()
        poloniusTextToShowLabel.text = modelPolonius.displayText()
    }
    
    // ROMEO
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else {
            return false
        }
        switch text.lowercased() {
        case "romeo":
            invalidNameLabel.isHidden = true
            textField.resignFirstResponder()
            romeoTextView.text = modelRomeo.romeoText
            return true
        case "benvolio":
            invalidNameLabel.isHidden = true
            textField.resignFirstResponder()
            romeoTextView.text = modelRomeo.benvolioText
            return true
        case "mercutio":
            invalidNameLabel.isHidden = true
            textField.resignFirstResponder()
            romeoTextView.text = modelRomeo.mercutioText
            return true
        default:
            invalidNameLabel.isHidden = false
            textField.resignFirstResponder()
            return false
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.text = ""
        romeoTextView.text = ""
        return true
    }
    
    
    
}

