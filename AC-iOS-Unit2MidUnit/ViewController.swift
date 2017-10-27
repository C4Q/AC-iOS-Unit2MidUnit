//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    let myMonologue = PoloniusMonologueModel()
    
    @IBOutlet weak var HeadLabel: UILabel!
    
    @IBOutlet weak var ActorLineTextView: UITextView!
    
    @IBOutlet weak var SearchOutPutTextView: UITextView!
    
    @IBOutlet weak var UItextViewInput: UITextField!
    

    @IBAction func NextLineButton(_ sender: UIButton) {
        ActorLineTextView.text = myMonologue.getThextLine()
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.UItextViewInput.delegate = self
    }
    
}

