//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var poloniusMonologueLabel: UILabel!
    @IBOutlet weak var textEntryField: UITextField!
    @IBOutlet weak var entryStatusLabel: UILabel!
    @IBOutlet weak var sceneTextView: UITextView!
    
    let monologue = PoloniusMonologueModel()
    let rAndJ = RomeoAndJulietModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poloniusMonologueLabel.text = ""
        

        
        // Do any additional setup after loading the view.
    }
    @IBAction func nextLineButton(_ sender: UIButton) {
        monologue.showNextLine()
        poloniusMonologueLabel.text = "\(monologue.nextLine)"
        
    }
}

