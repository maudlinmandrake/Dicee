//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Jenny Mikac on 08/17/2022
//  for Angela Yu's iOS Bootcamp
//
// Goals:
// Creating a UI and linking our code to the storyboard/interface
// so we can begin to alter things programatically using IBOutlet and IBAction

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let die = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix"),
    ]
    
    // code that will execute when our Roll button is tapped
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = die.randomElement()
        diceImageView2.image = die.randomElement()
        // randomElement() = pick a random element from the designated array
        // ANOTHER SOLUION:
        // diceImageView1.image = die[Int.random(in: 0...5)]
        // diceImageView2.image = die[Int.random(in: 0...5)]
        
    }
    
}

