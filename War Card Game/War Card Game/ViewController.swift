//
//  ViewController.swift
//  War Card Game
//
//  Created by Marco Espinoza on 10/11/19.
//  Copyright © 2019 Marco Espinoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Initialize scores
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize card numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update image view
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            //Player Wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if rightNumber > leftNumber {
            //CPU Wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        } else {
            //TODO: Tie breaker
        }
    }
}

