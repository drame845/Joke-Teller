//
//  ViewController.swift
//  Real Riddles & Jokes
//
//  Created by Upperline Code on 7/20/17.
//  Copyright © 2017 Upperline Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prompt: UILabel!
    
    @IBOutlet weak var answerButton: UIButton!
    
    @IBOutlet weak var answerText: UILabel!
    
    @IBOutlet weak var joke: UIButton!
    
    @IBOutlet weak var riddle: UIButton!
    
    var thisJoke: String = ""
    var thisRiddle: String = ""
   
    func getRandomColor() -> UIColor {
        let randomRed: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat (drand48())
        let randomBlue: CGFloat = CGFloat (drand48())
        let newColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
        return newColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerPress(_ sender: Any) {
        if prompt.text == thisJoke {
            answerText.text = jokeList[thisJoke]
        } else if prompt.text == thisRiddle {
            answerText.text = riddleList[thisRiddle]
        }
        
    }
    @IBAction func jokePress(_ sender: UIButton) {
        thisJoke = newJoke()
        prompt.text = thisJoke
        self.view.backgroundColor = getRandomColor()
        
        
    }
    @IBAction func riddlePress(_ sender: Any) {
        thisRiddle = newRiddle()
        prompt.text = thisRiddle
        self.view.backgroundColor = getRandomColor()
    }
}

