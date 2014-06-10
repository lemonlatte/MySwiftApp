//
//  ViewController.swift
//  MySwiftApp
//
//  Created by Yeh, Chang-Ching on 6/8/14.
//  Copyright (c) 2014 Yeh, Chang-Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var waterTextField : UITextField
    @IBOutlet var ratioTextField : UITextField
    @IBOutlet var coffeeTextField : UITextField
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButtonPressed(sender : AnyObject) {
        println("Calculate Button Has Pressed.")

        var water:Float = (self.waterTextField.text as NSString).floatValue
        var ratio:Float = (self.ratioTextField.text as NSString).floatValue
        
        var coffee:Float = water / ratio
        
        self.coffeeTextField.text = "\(coffee)"
            
        println("Water: \(water)")
        println("Ratio: \(ratio)")
        println("Coffee: \(coffee)")
    }

}

