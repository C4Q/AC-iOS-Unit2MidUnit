//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var nextLineButton: UIButton!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var invalidNameLabel: UILabel!
    var model = PoloniusMonologueModel()
    var model2 = RomeoAndJulietModel()
    var counter = -1
    let textArr = ["My liege, and madam, to expostulate",
                   "What majesty should be, what duty is,",
                   "What day is day, night night, and time is time,",
                   "Were nothing but to waste night, day, and time;",
                   "Therefore, since brevity is the soul of wit,",
                   "And tediousness the limbs and outward flourishes,",
                   "I will be brief. Your noble son is mad."
    ]
    override func viewDidLoad() {
        inputField.delegate = self
        super.viewDidLoad()
        lineLabel.isHidden = true
        invalidNameLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//    guard let word = textField.text else {
//            return false
//        }
        lineLabel.isHidden = true
        
        if (textField.text)?.lowercased() == "romeo"{
            textView.text = """
            ROMEO:
            What, shall this speech be spoke for our excuse?
            Or shall we on without a apology?
            ROMEO:
            Give me a torch: I am not for this ambling;
            Being but heavy, I will bear the light.
            ROMEO:
            Not I, believe me: you have dancing shoes
            With nimble soles: I have a soul of lead
            So stakes me to the ground I cannot move.
            ROMEO:
            I am too sore enpierced with his shaft
            To soar with his light feathers, and so bound,
            I cannot bound a pitch above dull woe:
            Under love's heavy burden do I sink.
            ROMEO:
            Is love a tender thing? it is too rough,
            Too rude, too boisterous, and it pricks like thorn.
            """
        }
        else if (textField.text)?.lowercased() == "benvolio"{
            textView.text =
            """
            BENVOLIO:
            The date is out of such prolixity:
            We'll have no Cupid hoodwink'd with a scarf,
            Bearing a Tartar's painted bow of lath,
            Scaring the ladies like a crow-keeper;
            Nor no without-book prologue, faintly spoke
            After the prompter, for our entrance:
            But let them measure us by what they will;
            We'll measure them a measure, and be gone.
            """
        }
       else if (textField.text)?.lowercased() == "mercutio"{
            textView.text =
            """
            MERCUTIO:
            Nay, gentle Romeo, we must have you dance.
            MERCUTIO:
            You are a lover; borrow Cupid's wings,
            And soar with them above a common bound.
            MERCUTIO:
            And, to sink in it, should you burden love;
            Too great oppression for a tender thing.
            """
            

        }else {
            invalidNameLabel.isHidden = false
            textView.text = ""
        }
                
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func nextLineButton(_ sender: UIButton) {
        lineLabel.isHidden = false
        invalidNameLabel.isHidden = true
        counter += 1
        if counter == 0 {
            lineLabel.text = textArr[counter]
        }
        if counter <= 6  {
        lineLabel.text = textArr[counter]
//            print(counter)
        }
        if counter == 6 {
           lineLabel.text = textArr[counter]
//            print(counter)
        }
        if counter >= 6{
            counter = -1
            //starts from beginning
        }
    }
    
}

