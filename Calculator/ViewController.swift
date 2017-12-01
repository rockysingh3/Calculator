//
//  ViewController.swift
//  Calculator
//
//  Created by Rocky Singh on 11/30/17.
//  Copyright © 2017 Personal. All rights reserved.
//


// left at 28:45

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel?
    
    var userIsInTheMiddleOfTyping = false
    
//    all the buttons are hooked on to this method
    @IBAction func touchDigit(_ sender: UIButton) {
//        get the value of the button pressed
        let digit  = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        }else{
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
}

