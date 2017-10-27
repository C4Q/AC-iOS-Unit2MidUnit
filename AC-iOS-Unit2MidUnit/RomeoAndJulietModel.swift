//
//  RomeoAndJulietScript.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct RomeoAndJulietModel {
    
    enum PersonName: String {
        case romeo, benvolio, mercutio, invalid
    }
    
    var personQuotes: [String]
    init() {
        personQuotes = [String]()
    }
    
    /// if user types "romeo", lowercase the entry, then search for items in the array sceneFourTextArr that begin with "romeo:", display those texts.
    
    private let sceneFourTextArr = [
        """
        ROMEO:
        What, shall this speech be spoke for our excuse?
        Or shall we on without a apology?
        """,
        
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
        """,
        
        """
        ROMEO:
        Give me a torch: I am not for this ambling;
        Being but heavy, I will bear the light.
        """,
        
        """
        MERCUTIO:
        Nay, gentle Romeo, we must have you dance.
        """,
        
        """
        ROMEO:
        Not I, believe me: you have dancing shoes
        With nimble soles: I have a soul of lead
        So stakes me to the ground I cannot move.
        """,
        
        """
        MERCUTIO:
        You are a lover; borrow Cupid's wings,
        And soar with them above a common bound.
        """,
        
        """
        ROMEO:
        I am too sore enpierced with his shaft
        To soar with his light feathers, and so bound,
        I cannot bound a pitch above dull woe:
        Under love's heavy burden do I sink.
        """,
        
        """
        MERCUTIO:
        And, to sink in it, should you burden love;
        Too great oppression for a tender thing.
        """,
        """
        ROMEO:
        Is love a tender thing? it is too rough,
        Too rude, too boisterous, and it pricks like thorn.
        """
    ]
    
    
    
    
    mutating func name(_ enteredName: String) -> PersonName {
        if enteredName.lowercased() == "romeo" {
           personQuotes = sceneFourTextArr.filter{$0.contains("ROMEO:")}
            return .romeo
        }
        if enteredName.lowercased() == "benvolio" {
            personQuotes = sceneFourTextArr.filter{$0.contains("BENVOLIO:")}
            return .benvolio
        }
        if enteredName.lowercased() == "mercutio" {
            personQuotes = sceneFourTextArr.filter{$0.contains("MERCUTIO:")}
            return .mercutio
        }
        print("104")
        return .invalid
    }
}


