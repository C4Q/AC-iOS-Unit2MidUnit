//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let poloniusMonologueModel = PoloniusMonologueModel()
    let romeoAndJulietModel = RomeoAndJulietModel()

    @IBOutlet weak var nextLineShownLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var invalidNameLabel: UILabel!
    @IBOutlet weak var displayLinesView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextLineShownLabel.text = poloniusMonologueModel.textArr[0]
        inputField.delegate = self
    }
    
    //SECTION 1:
    @IBAction func nextLineButtonClicked(_ sender: UIButton) {
        var currentElement = 1
        if currentElement < poloniusMonologueModel.textArr.count {
            nextLineShownLabel.text = poloniusMonologueModel.textArr[currentElement]
            currentElement += 1
        } else {
            currentElement = 0
        }
    }
    //SECTION 2:
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text?.lowercased() {
            if text == "romeo" || text == "benvolio" || text == "mercutio" {
                invalidNameLabel.isHidden = true
                let display = romeoAndJulietModel.interateThru(romeoAndJulietModel.sceneFourTextArr)
                displayLinesView.text = display
                return true
            }
        }
        invalidNameLabel.isHidden = false
        textField.text = ""
        return false
    }


}
