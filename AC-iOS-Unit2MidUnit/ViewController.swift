//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //PART 1
    @IBOutlet weak var DisplayLabel: UILabel!
    
    let poloniusModel = PoloniusMonologueModel()

    @IBAction func NextLineButton(_ sender: Any) {
       DisplayLabel.text = poloniusModel.pushLine()
    }
    
    //PART 2
    
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var SuccessLabel: UILabel!
    
    let romeoModel = RomeoAndJulietModel()

    var delegate: UITextFieldDelegate?
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let name = TextField.text else { return false }
        switch romeoModel.check(name: name) {
        case .correct:
            SuccessLabel.isHidden = true
            TextView.text = romeoModel.getQuotation(name: name)
        case .incorrect:
            SuccessLabel.text = "INVALID"
            SuccessLabel.isHidden = false
            TextView.text.removeAll()
        }
        textField.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.TextField.delegate = self
        SuccessLabel.isHidden = true
    }
    
}

