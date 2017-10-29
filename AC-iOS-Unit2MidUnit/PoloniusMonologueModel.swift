//
//  PoloniusMonologue.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

class PoloniusMonologueModel {
    private let textArr = ["My liege, and madam, to expostulate",
                           "What majesty should be, what duty is,",
                           "What day is day, night night, and time is time,",
                           "Were nothing but to waste night, day, and time;",
                           "Therefore, since brevity is the soul of wit,",
                           "And tediousness the limbs and outward flourishes,",
                           "I will be brief. Your noble son is mad."]
    var currentIndex: Int = 0

    func getNewPoemLine() -> String {
        //while currentIndex < textArr.count {
            currentIndex = currentIndex + 1 //moving onto next index to check
            //resetting back to 0 once index == count
            if currentIndex == textArr.count {
                currentIndex = 0
            }
            return "\(textArr[currentIndex])"
        //}
        //return textArr[0]
    }
    
    //https://stackoverflow.com/questions/28330187/create-a-function-to-iterate-and-cycle-through-an-array-in-swift
    /// I used this link from stackOverFlow for inspiration. It made me realize that I needed a  currentIndex variable to keep track of where I am while iterating along the array
    
}
