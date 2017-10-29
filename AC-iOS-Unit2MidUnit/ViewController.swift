//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //polonius outlets
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pTitleLabel: UILabel!
    @IBOutlet weak var poloniusTextView: UITextView!
    
    //romeoandjuliet outlets
    @IBOutlet weak var rJTitleLabel: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var rJTextView: UITextView!
    @IBOutlet weak var rJTextField: UITextField!
    
    let poloniusRules = PoloniusMonologueModel()
    let romeoAndJulietRules = RomeoAndJulietModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rJTextField.delegate = self
        displayLabel.isHidden = true
    }
    
    
    var poemContinues = true
    //polonius next button
    
    ///next button pressed == next index of textArr
    /// I wanted to code when the user presses the button a new index of the textArr array would appear
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        //when button is pressed show next line
        poloniusTextView.text = poloniusRules.getNewPoemLine()
    }
    
    //romeo and juliet
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = rJTextField else {
            return false
        }
        
//        switch romeoAndJulietRules.NameState {
//        case .romeo:
//            rJTextView.text =  "blah"
//        case .invalid:
//            displayLabel.text = "Invalid Name"
//
//        }
    
        resignFirstResponder()
        return true
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
