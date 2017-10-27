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
    var myActorLines = RomeoAndJulietModel()
    
    @IBOutlet weak var actorCheckLabel: UILabel!
    @IBOutlet weak var HeadLabel: UILabel!
    
    @IBOutlet weak var ActorLineTextView: UITextView!
    
    @IBOutlet weak var SearchOutPutTextView: UITextView!
    
    @IBOutlet weak var UItextViewInput: UITextField!
    

    @IBAction func NextLineButton(_ sender: UIButton) {
        ActorLineTextView.text = myMonologue.getThextLine()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let actorInput = textField.text else {
            actorCheckLabel.text = "Invalid Input4"
            SearchOutPutTextView.text = ""
            actorCheckLabel.isHidden = false
            return false
        }
        let currentActor = myActorLines.getActorLines(inputActor: actorInput)
        if currentActor.active == false{
            
            actorCheckLabel.text = currentActor.name
            SearchOutPutTextView.text = ""
            textField.resignFirstResponder()
            actorCheckLabel.isHidden = false
        }
        else{
            actorCheckLabel.isHidden = true
            SearchOutPutTextView.text = currentActor.script
        }
        print(currentActor.script)
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.UItextViewInput.delegate = self
        SearchOutPutTextView.text = myActorLines.getAllScript()
    }
    
}

