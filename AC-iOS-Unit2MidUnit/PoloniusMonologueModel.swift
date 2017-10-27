//
//  PoloniusMonologue.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation


class PoloniusMonologueModel {
    var currentLine = ""
    var strIndex = 0
    //var counter = 0
    
    //Complete this model
    //Monologue Arr of Str
     let textArr = ["My liege, and madam, to expostulate",
                           "What majesty should be, what duty is,",
                           "What day is day, night night, and time is time,",
                           "Were nothing but to waste night, day, and time;",
                           "Therefore, since brevity is the soul of wit,",
                           "And tediousness the limbs and outward flourishes,",
                           "I will be brief. Your noble son is mad."
    ]
    
    func nextLine() {
        for lineIndex in 0..<textArr.endIndex {
            for line in textArr {
                strIndex = lineIndex
                //print("str index from model: \(strIndex), current line from model \(currentLine)")
                strIndex += 1
                currentLine = line
                //print(currentLine)
             //counter += 1
            }
        }
    }
    
    
    
}
