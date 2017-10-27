//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit




class ViewController: UIViewController, UITextFieldDelegate {
    var polonius = PoloniusMonologueModel()
    var rJModel = RomeoAndJulietModel()
    
    @IBOutlet weak var singleQuoteLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var LargeQuoteTextView: UITextView!
    @IBAction func nextLineButton(_ sender: UIButton) {
        polonius.nextLine()
        singleQuoteLabel.text = polonius.currentQuote
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else {
            errorMessage.text = "Invalid Input"
            errorMessage.isHidden = false
            return false
        }
        if text.uppercased() == "ROMEO" || text.uppercased() == "BENVOLIO" || text.uppercased() == "MERCUTIO" {
            errorMessage.isHidden = true
            rJModel.uppercasedInput = text.uppercased()
            //the function that shows the quote
        } else {
            errorMessage.text = "Invalid Input"
            errorMessage.isHidden = false
        }
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    
    
}









