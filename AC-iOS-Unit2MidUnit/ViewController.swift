//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {
    
    var counter = 0
    var monoModel = PoloniusMonologueModel()
    var sceneModel = RomeoAndJulietModel()
    
    //  //View Outlets
    
    //Label Vars
    @IBOutlet weak var ponoliusMono: UILabel! //P1
    @IBOutlet weak var sceneLabel: UILabel! //P2
    @IBOutlet weak var invalidName: UILabel! //P2
    
    //Scroll View Vars
    @IBOutlet weak var InputFromMono: UIScrollView! //P1
    @IBOutlet weak var ponoMono: UILabel! //P1
    @IBOutlet weak var sceneScroll: UIScrollView! //P2
    @IBOutlet weak var sceneTwo: UILabel! //P2
    
    //Next Line Button Outlet
    @IBOutlet weak var nextLineButton: UIButton! //P1
    
    //Text Box
    @IBOutlet weak var textBox: UITextField! //P1
    
    
    //Override View Func 
    override func viewDidLoad() {
        super.viewDidLoad()
        InputFromMono.delegate = self
        sceneScroll.delegate = self
        textBox.delegate = self
        // Do any additional setup after loading the view.
    }
    
    //Action Button - Mid Unit Test Part 1
    @IBAction func nextLineAction(_ sender: UIButton) {
        monoModel.nextLine()
        if counter < 7 {
            ponoMono.text = monoModel.textArr[counter]
            counter += 1
        }
        else {
            ponoMono.text = monoModel.textArr[0]
            return
        }
        
        //All the code I tried but didn't work
        //let strIndex = monoModel.strIndex
        
        //        if strIndex == counter - 1{
        //            let currentLine = monoModel.textArr[strIndex - 1]
        //            ponoMono.text = currentLine
        //            print("str Counter: \(strIndex), button counter: \(counter), current line: \(currentLine)")
        
    }
    //currentLine = monoModel.textArr[0]
    // counter = 0

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "ROMEO" || textField.text == "MERCUTIO" || textField.text == "BENVOLIO" || {
            if sceneModel.sceneFourTextArr.contains("ROMEO".uppercased()){
                print("hey")
            } else if  sceneModel.sceneFourTextArr.contains("MERCUTIO".uppercased()){
                print("hey")
            } else if 
    }
    
    

}




}
//}


