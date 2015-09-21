//
//  ViewController.swift
//  isItPrime
//
//  Created by Mike Pitre on 9/20/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberBox: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func submitButton(sender: AnyObject) {
        
        if let number = Int(numberBox.text!) {
        
            var isPrime = true
        
        
            if number == 1 {
            
                isPrime = false
            
            }
        
            if number != 1 && number != 2 {
            
                for var i = 2; i < number; i++ {
                
                    if number % i == 0 {
                    
                        isPrime = false
                    
                    }
                }
            }
        
            if isPrime == true {
                result.text = "\(number) is a prime number."
            } else {
                result.text = "\(number) is not a prime number."
            }
        
        }
        
        else {
            result.text = "Please enter a whole number."
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

