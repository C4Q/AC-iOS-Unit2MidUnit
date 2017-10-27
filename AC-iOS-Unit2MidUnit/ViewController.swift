//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var pMonologue = PoloniusMonologueModel()
    var romeoAndJulieta = RomeoAndJulietModel()
    
    @IBOutlet weak var lblDisplayText: UILabel!
    @IBOutlet weak var lblUserInput: UITextField!
    @IBOutlet weak var lblInvalidMessage: UILabel!
    @IBOutlet weak var txtViewDisplayMessage: UITextView!
    @IBAction func btnNextLine(_ sender: UIButton) {
        lblDisplayText.text = pMonologue.getSentenceLine()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblUserInput.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            return false
        }
        let message = romeoAndJulieta.getMessage(word: textField.text).message
        if message == nil {
            lblInvalidMessage.isHidden = false
            lblUserInput.text = ""
            txtViewDisplayMessage.text = ""
        } else {
            lblInvalidMessage.isHidden = true
            txtViewDisplayMessage.text = message
            lblUserInput.text = ""
        }
        return true
    }
}

