//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var poloniusMonologueTextView: UITextView!
    @IBOutlet weak var romeoJulietTextField: UITextField!
    @IBOutlet weak var romeoJulietTextView: UITextView!
    
    var polonius = PoloniusMonologueModel()
    var romeoJuliet = RomeoAndJulietModel()
    
    override func viewDidLoad() {
        roundEdgesOf(poloniusMonologueTextView)
        roundEdgesOf(romeoJulietTextView)
        poloniusMonologueTextView.text = polonius.firstLine
        romeoJulietTextView.text = ""
        super.viewDidLoad()
        romeoJulietTextField.delegate = self
    }
    
    @IBAction func nextLineButtonPressed(_ sender: UIButton) {
        poloniusMonologueTextView.text = polonius.nextLine()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let inputName = textField.text else {
            return false
        }
        romeoJulietTextView.text = romeoJuliet.name(of: inputName).lines
        switch romeoJuliet.name(of: inputName).exists {
        case true:
            textField.resignFirstResponder()
            return true
        case false:
            return false
        }
    }
    
    func roundEdgesOf(_ textView: UITextView) {
        textView.layer.cornerRadius = 10
        textView.layer.masksToBounds = true
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.init(red: 0.745, green: 0.278, blue: 0.309, alpha: 1).cgColor
    }
    
}

