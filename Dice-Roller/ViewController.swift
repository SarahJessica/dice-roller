//
//  ViewController.swift
//  Dice-Roller
//
//  Created by Jess Leivers on 19/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    
    var randomIndex1: Int = 0
    var randomIndex2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func rollBtn(_ sender: Any) {
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        
        diceLeft.image = UIImage(named: "dice\(randomIndex1).png")
        diceRight.image = UIImage(named: "dice\(randomIndex2).png")
    }

}

