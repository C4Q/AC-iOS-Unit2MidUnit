//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    var poloniusModel = PoloniusMonologueModel()
    var romeoAndJulietModel = RomeoAndJulietModel()
    

    @IBOutlet weak var RJTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PoloniusTextView.text = poloniusModel.currentLine
//        RJEnterText.delegate = self
//        RJTextView.delegate = self
    }
    
    
    @IBOutlet weak var PoloniusTextView: UITextView!
    
    @IBAction func PoloniusButtonPressed(_ sender: UIButton) {
        PoloniusTextView.text = poloniusModel.currentLine
        poloniusModel.getLineFromTextArr()
    }
    
    ////////////////////////////
    //Enter Romeo, Benvolio or Mercutio Start

 
    @IBOutlet weak var RJTextEnter: UITextField!
    @IBAction func RJTextEntered(_ sender: UITextField) {
        RJTextEnter.addTarget(self, action: "textFieldDidChange:", for: UIControlEvents.editingChanged)
        
        switch sender.text {
        case _ where sender.text == "Romeo".lowercased():
            RJTextView.text = romeoAndJulietModel.getRomeoLines()
        case _ where sender.text == "Mercutio".lowercased():
            romeoAndJulietModel.getMercutioLines()
        case _ where sender.text == "Benvolio".lowercased():
            romeoAndJulietModel.getBenvolioLines()
        default:
            RJTextView.text = "Invalid Entry"
            }

    //Did not learn TextView or TextField Fully. Was tying to state that if user inputted certain word, a part of the play would appear in the text view, otherwise an error would appear. This would happen by a function in the Model that would display the lines when called upon by the sender text.
            
            


}
}






