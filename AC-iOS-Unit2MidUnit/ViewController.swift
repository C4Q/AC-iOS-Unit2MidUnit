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
        nextLineLabel.text = model.printNextLine()
        textField.delegate = self
        invalidNameLabel.isHidden = true
    }
    
    @IBOutlet weak var invalidNameLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nextLineLabel: UILabel!
    @IBOutlet weak var textBox: UITextView!
    
    var model = PoloniusMonologueModel()
    var model2 = RomeoAndJulietModel()
    
    
    @IBAction func nextLineButtonPressed(_ sender: UIButton) {
        nextLineLabel.text = model.printNextLine()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else {
            return false
        }
        guard text.lowercased() == "romeo" || text.lowercased() == "benvolio" || text.lowercased() == "mercutio" else {
            invalidNameLabel.isHidden = false
            textField.resignFirstResponder()
            textField.clearsOnBeginEditing = true
            return false
        }
        switch model2.textCheck(text) {
        case .mercutio:
            textBox.text = characterPlayLines
            textField.clearsOnBeginEditing = true
            textField.resignFirstResponder()
        case .romeo:
            textBox.text = characterPlayLines
            textField.clearsOnBeginEditing = true
            textField.resignFirstResponder()
        case .benvolio:
            textBox.text = characterPlayLines
            textField.clearsOnBeginEditing = true
            textField.resignFirstResponder()
        case .invalidInput:
            characterPlayLines = ""
            textField.resignFirstResponder()
            textField.clearsOnBeginEditing = true
        }
        invalidNameLabel.isHidden = true
        textField.resignFirstResponder()
        textField.clearsOnBeginEditing = true
        return false
    }
}

