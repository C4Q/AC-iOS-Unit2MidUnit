//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var poloniusMonologueTextView: UITextView!
    @IBOutlet weak var romeoAndJulietTextView: UITextView!
    @IBOutlet weak var invalidEntryLabel: UILabel!
    
    var poloniusMonologue = PoloniusMonologueModel()
    var romeoAndJulietLines = RomeoAndJulietModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputField.delegate = self
        poloniusMonologueTextView.text = poloniusMonologue.currentMonologueLine
        invalidEntryLabel.isHidden = true
    }
    
    @IBAction func nextLineButton(_ sender: UIButton) {
        poloniusMonologueTextView.text = poloniusMonologue.changeMonologueLine()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let name = textField.text else {
            invalidEntryLabel.isHidden = false
            return false
        }
        guard name.lowercased() == "romeo" || name.lowercased() == "benvolio" || name.lowercased() == "mercutio" else {
            invalidEntryLabel.isHidden = false
            return false
        }
        invalidEntryLabel.isHidden = true
        romeoAndJulietTextView.text = romeoAndJulietLines.changeRomeoAndJulietText(to: name.lowercased())
        textField.resignFirstResponder()
        return true
        
    }
    
    
    
}

