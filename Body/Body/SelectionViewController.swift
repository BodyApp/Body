//
//  ViewController.swift
//  Body
//
//  Created by Daniel Liebeskind on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    @IBOutlet weak var bookNowButton: UIButton!
    @IBOutlet weak var trainerTypeSlider: UISlider!
    
    var price: Double?
    let chooseClassInstance = ChooseClass()
    var workoutTypes = [String]()
    let paymentSegue = "SegueToPaymentConfirmation"
    var workoutSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookNowButton.layer.cornerRadius = 10
        workoutTypes = chooseClassInstance.getWorkoutTypes()
        
        
    }
    
    @IBAction func sliderViewChanged(sender: UISlider) {
        var valToSet = roundf(trainerTypeSlider.value)
        trainerTypeSlider.setValue(valToSet, animated: true)
        
        switch trainerTypeSlider.value {
            case 0: bookNowButton.setTitle("Book Class for $10", forState: UIControlState.Normal)
            case 1: bookNowButton.setTitle("Book Class for $20", forState: UIControlState.Normal)
            default: break
        }
    }
    
    @IBAction func bookNowButtonPushed(sender: UIButton) {
        self.performSegueWithIdentifier(paymentSegue, sender: self)
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == paymentSegue {
            if let destination = segue.destinationViewController as? PaymentViewController {
//                destination.classPrice = classPrice
//                destination.classType = workoutSelected
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

