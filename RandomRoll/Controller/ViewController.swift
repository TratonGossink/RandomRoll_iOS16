//
//  ViewController.swift
//  RandomRoll
//
//  Created by Traton Gossink on 3/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    var images = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    var dice = [UIImage]()
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func shakeBtnPressed(_ sender: UIButton) {
        
        let left = Int.random(in: 0...5)
        let right = Int.random(in: 0...5)
        
        leftImage.image = UIImage(named: images[left])
        rightImage.image =  UIImage(named: images[right])
        
        score = left + 1 + right + 1
                
        scoreLabel.text =  "\(score)"
        
        func rolling() {
            rightImage.animationImages = dice
            rightImage.animationDuration = 1
            rightImage.animationRepeatCount = 1
            rightImage.startAnimating()
        }
    
    }
    
}

