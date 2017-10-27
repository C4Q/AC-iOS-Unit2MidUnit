//
//  PoloniusMonologue.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct CurrentSentence {
    var sentence: String
    var idxSentence: Int?
}

class PoloniusMonologueModel {
    private var currentSentence = CurrentSentence(sentence: "", idxSentence: nil)
    private let textArr = ["My liege, and madam, to expostulate",
                 "What majesty should be, what duty is,",
                 "What day is day, night night, and time is time,",
                 "Were nothing but to waste night, day, and time;",
                 "Therefore, since brevity is the soul of wit,",
                 "And tediousness the limbs and outward flourishes,",
                 "I will be brief. Your noble son is mad."
                ]
    
    func getSentenceLine() -> String {
        var index = 0
        if currentSentence.idxSentence == nil {
            currentSentence.idxSentence = 0
        } else {
            index = currentSentence.idxSentence!
        }
        currentSentence.sentence = textArr[index]
        currentSentence.idxSentence = (textArr.count - 1 == index) ? 0 : index + 1
        return currentSentence.sentence
    }
}
