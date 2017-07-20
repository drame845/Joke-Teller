//
//  Riddles.swift
//  Real Riddles & Jokes
//
//  Created by Upperline Code on 7/20/17.
//  Copyright © 2017 Upperline Code. All rights reserved.
//

import Foundation
var riddleList: [String : String] = ["Avoid me for surprises. Let me help you stay grounded. What am I?" : "The truth", "What comes once in a minute, twice in a moment but never in a thousand years?" : "The letter M", "What cannot kill itself, but can be killed by another?" : "An idea", "The more you take, the more you leave behind. What am I? " : "Footprints", "What is greater than God, eviler than the Devil, poor people have it, rich people need it, what is it?": "Nothing", "the maker doesn't want it, the buyer doesn't need it, the user never sees it, what is it?": "A coffin"]

var riddlePrompt: [String] = []
var riddleAnswer: [String] = []

func newRiddle() -> String{
    for (riddle, answer) in riddleList {
        riddlePrompt.append(riddle)
        riddleAnswer.append(answer)
    }
    let numberOfRiddles = riddlePrompt.count
    let randomNumber = Int(arc4random_uniform(UInt32(numberOfRiddles)))
    let randomRiddle = riddlePrompt[randomNumber]
    return randomRiddle
}
