//
//  Jokes.swift
//  Real Riddles & Jokes
//
//  Created by Upperline Code on 7/20/17.
//  Copyright © 2017 Upperline Code. All rights reserved.
//

import Foundation
var jokeList: [String: String] = ["What do you call a fat psychic?" : "A four chin teller", "Why did the scarecrow get a promotion?": "He was outstanding in his field", "What's the difference between roast beef and pea soup?": "Anyone can roast beef but no one can pee soup", "What's a bad comedian's favorite drink?": "Booze", "Why did the farmer cross the cow?": "To get to the udder side", "Marriage is like a poker hand...": "You start out with hearts and a diamond but soon you're looking for a club and a spade", "What's the difference between a good pokerhand and a vegetable garden?": "One you read 'em and weep, the other you weed 'em and reap.", "What do you call a short fortune teller on the run?": "A small medium at large", "Why did the lettuce blush?": "Because it saw the salad dressing", "A man took another man to court accusing him of stealing a small box...": "The man claimed it was just an empty box. The case was closed, it was a brief case.", "What did the pirate say when he turned 80?": "Aye Matey!! (I'm eighty)", "What's Micheal Jackson's favorite painting?": "Shamona Lisa", "What does a nosy pepper do?": "It gets jalepeño buissness" ]

var jokePrompt: [String] = []

var jokeAnswer: [String] = []

func newJoke() -> String{
    for (joke, answer) in jokeList {
        jokePrompt.append(joke)
        jokeAnswer.append(answer)
    }
    let numberOfJokes = jokePrompt.count
    let randomNumber = Int(arc4random_uniform(UInt32(numberOfJokes)))
    let randomJoke = jokePrompt[randomNumber]
    return randomJoke
}
