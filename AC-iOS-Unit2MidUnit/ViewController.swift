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
        textViewPM.text = model.currentText
        textField.delegate = self
    }
    
    @IBOutlet weak var textViewPM: UITextView!
    @IBOutlet weak var newLineButton: UIButton!
    
    let model = PoloniusMonologueModel()
    
    @IBAction func newLineButtonPressed(_ sender: UIButton) {
        model.getNextLine()
       self.textViewPM.text = model.currentText
    }
    
   
   
    var modelR = RomeoAndJulietModel()
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var invalidLabel: UILabel!
    @IBOutlet weak var textViewTwo: UITextView!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if modelR.getDisplayText(input: textField.text!) {
            self.invalidLabel.isHidden = true
        } else {
            self.invalidLabel.isHidden = false
        }
      self.textViewTwo.text = modelR.displayText
        self.textField.resignFirstResponder()
        return true
        
    }
    
    
    
    
    
    
    
    
    
}

