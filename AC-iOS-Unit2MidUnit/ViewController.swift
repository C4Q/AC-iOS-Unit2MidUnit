//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate{

    var poloniusClass = PoloniusMonologueModel()
    var dialogueStruct = RomeoAndJulietModel()
    
    var myTextField: UITextField!

    @IBOutlet weak var invalidNameLabel: UILabel!
    @IBOutlet weak var monologueDisplayLabel: UILabel!
    @IBOutlet weak var dialogueTextView: UITextView!
    @IBOutlet weak var userInputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInputTextField.delegate = self
        userInputTextField.placeholder = "Enter Romeo, Benvolio or Mercutio"
    }
    @IBAction func nextLineButton(_ sender: UIButton) {
        monologueDisplayLabel.text = poloniusClass.displayPoloniusMessage()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        invalidNameLabel.isHidden = true
        switch textField.text!.lowercased() {
        case "romeo":
            dialogueTextView.text = dialogueStruct.getDialogue(actorName: "romeo")
        case "mercutio":
            dialogueTextView.text = dialogueStruct.getDialogue(actorName: "mercutio")
        case "benvolio":
            dialogueTextView.text = dialogueStruct.getDialogue(actorName: "benvolio")
        default:
            invalidNameLabel.isHidden = false
        }
        return true
    }

}

