//
//  RollViewController.swift
//  DiceApp
//
//  Created by Sam Stephen Havens on 1/31/21.
//

import UIKit

class RollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Run Dice with Segue Only
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "rollDice" {
            
            let controller = segue.destination as! RollDiceViewController
            
            controller.firstValue = randomDiceValue()
            controller.secondValue = randomDiceValue()
        }
    }
     */
    
    
    // MARK: Generate Dice Value
    
    // randomly generates a Int from 1 to 6
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    @IBAction func rollTheDice(_ sender: Any) {
        
        /* Presenting View Controller Programmatically Code
         
        var controller: DiceViewController
        controller = storyboard?.instantiateViewController(identifier: "DiceViewController") as! DiceViewController
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
        present(controller, animated: true, completion: nil)
        
         */
        
        
        /* Presenting View Controller Combining Code with segue
         
        performSegue(withIdentifier: "rollDice", sender: self)
 
         */
        
        performSegue(withIdentifier: "rollDice", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! RollDiceViewController
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
    }
    
    
}

