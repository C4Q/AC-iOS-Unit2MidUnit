//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
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
    @IBOutlet weak var sceneScroll: UIScrollView! //P2
    
    //Next Line Button Outlet
    @IBOutlet weak var nextLineButton: UIButton! //P1
    
    //Text Box
    @IBOutlet weak var textBox: UITextField! //P1
    
    
    //Override View Func 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Action Button
    @IBAction func nextLineAction(_ button: UIButton) {
        counter += 1
        monoModel.addLine()
        
    }
    
    
    
}

