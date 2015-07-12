//
//  ViewController.swift
//  Body
//
//  Created by Daniel Liebeskind on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit
import QuartzCore

class SelectionViewController: UIViewController {

    @IBOutlet weak var bookNowButton: UIButton!
    @IBOutlet weak var trainerTypeSlider: UISlider!
    
    @IBOutlet weak var crossfitButton: UIButton!
    @IBOutlet weak var bootcampButton: UIButton!
    @IBOutlet weak var yogaButton: UIButton!
    @IBOutlet weak var pilatesButton: UIButton!
    
    let chooseClassInstance = ChooseClass()

    let paymentSegue = "SegueToPaymentConfirmation"
    var workoutSelected = 0
    var previouslySelected = 0
    var workoutTypes = [String]()
    var selectedWorkoutString = "Crossfit"
    var price = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        workoutTypes = chooseClassInstance.getWorkoutTypes()
        
        bookNowButton.layer.borderWidth = 3.0
        bookNowButton.layer.borderColor = UIColor(red:0.047, green:0.104, blue:0.275, alpha:1).CGColor
        
        crossfitButton.backgroundColor = UIColor.whiteColor()
        crossfitButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        crossfitButton.layer.borderWidth = 3.0
        crossfitButton.layer.borderColor = UIColor(red:0.038, green:0.095, blue:0.283, alpha:1).CGColor
    }
    
    @IBAction func workoutTypeButtonPushed(sender: UIButton) {
        previouslySelected = workoutSelected
        workoutSelected = sender.tag-1 // had to start numbering with 1 because xcode tags don't have a '0'
        
        sender.backgroundColor = UIColor.whiteColor()
        sender.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        sender.layer.borderWidth = 3.0
        sender.layer.borderColor = UIColor(red:0.038, green:0.095, blue:0.283, alpha:1).CGColor
        
        selectedWorkoutString = workoutTypes[workoutSelected]
        bookNowButton.setTitle("Book \(selectedWorkoutString) for $\(price)", forState: UIControlState.Normal)
        
        switch previouslySelected {
        case 0:
            crossfitButton.backgroundColor = UIColor(red:0.038, green:0.095, blue:0.283, alpha:1)
            
            crossfitButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            crossfitButton.layer.borderWidth = 0.0
        case 1:
            bootcampButton.backgroundColor = UIColor(red:0.038, green:0.095, blue:0.283, alpha:1)
            
            bootcampButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            bootcampButton.layer.borderWidth = 0.0

        case 2:
            yogaButton.backgroundColor = UIColor(red:0.038, green:0.095, blue:0.283, alpha:1)
            yogaButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            yogaButton.layer.borderWidth = 0.0
            yogaButton.layer.borderColor = UIColor.darkGrayColor().CGColor
        case 3:
            pilatesButton.backgroundColor = UIColor(red:0.038, green:0.095, blue:0.283, alpha:1)
            pilatesButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            pilatesButton.layer.borderWidth = 0.0
            pilatesButton.layer.borderColor = UIColor.darkGrayColor().CGColor
        default: break
        }
    }
    
    
    @IBAction func sliderViewChanged(sender: UISlider) {
        var valToSet = roundf(trainerTypeSlider.value)
        trainerTypeSlider.setValue(valToSet, animated: true)
        
        switch trainerTypeSlider.value {
            case 0: price = 10
            case 1: price = 20
            default: break
        }

        bookNowButton.setTitle("Book \(selectedWorkoutString) for $\(price)", forState: UIControlState.Normal)
    }
    
    @IBAction func bookNowButtonPushed(sender: UIButton) {
        self.performSegueWithIdentifier(paymentSegue, sender: self)
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == paymentSegue {
            if let destination = segue.destinationViewController as? PaymentViewController {
                destination.price = price
                destination.trainerType = Int(trainerTypeSlider.value)
                destination.workoutType = selectedWorkoutString
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

