//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var count = 0
    var name: String!
    @IBOutlet weak var poloniusResult: UILabel!
    @IBOutlet weak var romeoAndJulietText: UITextView!
    @IBOutlet weak var nameInput: UITextField!
    
    var poloModel = PoloniusMonologueModel()
    var romAndJulModel = RomeoAndJulietModel()
    
    
    @IBAction func poloniusStr(_ sender: UIButton) {
        
        poloniusResult.text = poloModel.nextLine(count)
        count += 1
        
        if count == 7 {
            count = 0
        }
    }
    
    private func textFieldShouldReturn(_ textField: UITextField) -> UITextView{
        
        romeoAndJulietText.text = romAndJulModel.gatherLines(name)
        return romeoAndJulietText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name = nameInput.text
        // Do any additional setup after loading the view.
        }
}

