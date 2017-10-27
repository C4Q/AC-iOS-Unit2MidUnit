//
//  RomeoAndJulietScript.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct RomeoAndJulietModel {
    //Complete this model
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
    private func isOwnerOfText(line: String, role: String) -> Bool {
        let nameToMatch = role.lowercased()
        var nameUpToColon = ""
        for char in line {
            guard char != ":" else {
                break
            }
            nameUpToColon.append(char)
        }
        nameUpToColon = nameUpToColon.lowercased()
        return nameToMatch == nameUpToColon
    }
    func getLines(of role: String) -> String {
        var fullTextToReturn = ""
        
        for str in sceneFourTextArr where isOwnerOfText(line: str, role: role){
            fullTextToReturn += str
            fullTextToReturn.append("\n")
        }
        
        return fullTextToReturn
    }
    
    func isOkPerson(role: String) -> Bool {
        let roleLowered = role.lowercased()
        return ["romeo", "benvolio", "mercutio"].contains(roleLowered)
    }
}
