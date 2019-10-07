//
//  ViewController.swift
//  Factorial Calculator
//
//  Created by Michael Casey on 1/24/19.
//  Copyright © 2019 Michael Casey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberInput: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var numberDispaly: UILabel!
    
    @IBAction func numberButton(_ sender: UIButton) {
        
        numberDispaly.text = numberDispaly.text! + String(sender.tag-1)
        numberInput = Int(numberDispaly.text!)!
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
            var answer: Int = 1
        
            for number in 1...numberInput {
                
                answer *= number
            }
        
            numberDispaly.text = String(answer)
        }
        
    }
    


