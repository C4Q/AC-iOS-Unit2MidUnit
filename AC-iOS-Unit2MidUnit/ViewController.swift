//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    //Polonius Monologue Handling
    let Monologue = PoloniusMonologueModel()
    
    @IBOutlet weak var lineToShow: UITextView!
    
    @IBAction func getNextLine(_ sender: Any) {
        lineToShow.text = Monologue.nextLine()
    }
    
    
    
    //Romeo and Juliet Handling
    let rAndJScript = RomeoAndJulietModel()
    
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var invalidMssg: UILabel!
    @IBOutlet weak var characterText: UITextView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userInput.resignFirstResponder()
        guard rAndJScript.isOkPerson(role: userInput.text!) else {
            invalidMssg.isHidden = false
            characterText.text = ""
            return true
        }
        invalidMssg.isHidden = true
        characterText.text = rAndJScript.getLines(of: userInput.text!)
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineToShow.text = Monologue.nextLine()
        userInput.delegate = self
        
        characterText.text = ""
        // Do any additional setup after loading the view.
    }
    
}

