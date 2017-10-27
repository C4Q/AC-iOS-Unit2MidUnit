//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var monologLabel: UILabel!
    var lines = PoloniusMonologueModel()
    var i = 0
    @IBAction func monologButton(_ sender: UIButton) {
        
        monologLabel.text =  lines.textArr[i]
        i += 1
        if i == lines.textArr.count {
            i = 0
        }
    }
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var innvalidNameLabel: UILabel!
    
    @IBOutlet weak var textViewRaJ: UITextView!
    
    
    var correspondingText = RomeoAndJulietModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
    
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var str = ""
        if let input = inputTextField.text?.lowercased() {
            switch input{
            case "romeo",   "romeo ":
                innvalidNameLabel.isHidden = true
                for i in 0..<correspondingText.sceneFourTextArr.count-1 {
                if correspondingText.sceneFourTextArr[i].contains("ROMEO:"){
                str.append(correspondingText.sceneFourTextArr[i]  + "\n")
                    textViewRaJ.text = str
                    } }
            case "benvolio", "benvolio ":
                innvalidNameLabel.isHidden = true
                for i in 0..<correspondingText.sceneFourTextArr.count-1 {
                    if correspondingText.sceneFourTextArr[i].contains("BENVOLIO:"){
                        str.append(correspondingText.sceneFourTextArr[i]  + "\n")
                        textViewRaJ.text = str
                } }
            case "mercutio", "mercutio ":
                innvalidNameLabel.isHidden = true
                for i in 0..<correspondingText.sceneFourTextArr.count-1 {
                    if correspondingText.sceneFourTextArr[i].contains("MERCUTIO:"){
                        str.append(correspondingText.sceneFourTextArr[i]  + "\n")
                        textViewRaJ.text = str
                    } }
            case  "" :
                innvalidNameLabel.isHidden = true
                textViewRaJ.text = ""
                
            default:
                innvalidNameLabel.isHidden = false
                textViewRaJ.text = ""
            }
        }
        return true
    }
    
}

