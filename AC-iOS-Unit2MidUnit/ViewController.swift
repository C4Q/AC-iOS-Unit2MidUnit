//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var romeoAndJulietScene: UITextField!
    @IBOutlet weak var monologueSectionDisplayed: UITextView!
    
    @IBOutlet weak var invalidNameMessage: UILabel!
    
    @IBOutlet weak var romeoAndJulietSceneDisplay: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        monologueSectionDisplayed.text = poloniusModel.nextLine()
        self.romeoAndJulietScene.delegate = self
    }
    
    
    
    var poloniusModel = PoloniusMonologueModel()
    var romeoAndJulientModel = RomeoAndJulietModel()
    
    
    
    
    
    
    
    @IBAction func nextLinePressed(_ sender: UIButton) {
        monologueSectionDisplayed.text = poloniusModel.nextLine()
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let character = textField.text else{
            return false
        }
        let linesInScene = romeoAndJulientModel.characterlines(input: character)
        if linesInScene == "X" {
            invalidNameMessage.isHidden = false
            invalidNameMessage.text = "Invalid Name"
            textField.resignFirstResponder()
        }else{
        
        invalidNameMessage.isHidden = true
        romeoAndJulietSceneDisplay.text = linesInScene
        textField.resignFirstResponder()
        
        return true
    }
    return true
}
}
