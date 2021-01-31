//
//  RollDiceViewController.swift
//  DiceApp
//
//  Created by Sam Stephen Havens on 1/31/21.
//

import UIKit

class RollDiceViewController: UIViewController {

    @IBOutlet weak var firstDiceValue: UIImageView!
    @IBOutlet weak var secondDiceValue: UIImageView!
    @IBOutlet weak var okButton: UIButton!
    
    // Properties
    var firstValue: Int?
    var secondValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
    
        // The dice will only appear if firstValue and secondValue have been set
        if let firstValue = self.firstValue {
            self.firstDiceValue.image = UIImage(named: "d\(firstValue)")
        } else {
            self.firstDiceValue.image = nil;
        }
        
        if let secondValue = self.secondValue {
            self.secondDiceValue.image = UIImage(named: "d\(secondValue)")
        } else {
            self.secondDiceValue.image = nil
        }
        
        self.firstDiceValue.alpha = 0
        self.secondDiceValue.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.3) {
            self.firstDiceValue.alpha = 1
            self.secondDiceValue.alpha = 1
            }
    }
    
    // MARK: Generate Image for Dice
    
    func imageForValue(_ value: Int?) -> UIImage? {
        // accepts a conditional Int, and returns an dice image, or nil
        return nil
    }
    
    @IBAction func okButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
