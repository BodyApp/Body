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
    @IBOutlet weak var trainerTypeSegmentedController: UISegmentedControl!
    @IBOutlet weak var workoutTypeSlider: UISlider!
    @IBOutlet weak var workoutTypeLabel: UILabel!
    @IBOutlet weak var workoutControlsBackground: UIView!
    
    var price: Double?
    let chooseClassInstance = ChooseClass()
    var workoutTypes = [String]()
    let paymentSegue = "SegueToPaymentConfirmation"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workoutControlsBackground.layer.cornerRadius = 20
        trainerTypeSegmentedController.layer.cornerRadius = 5
        bookNowButton.layer.cornerRadius = 10
        
        workoutTypes = chooseClassInstance.getWorkoutTypes()
        workoutTypeSlider.setValue(2.0, animated: false)
        let workoutSelected = Int(self.workoutTypeSlider.value)
        workoutTypeLabel.text = workoutTypes[workoutSelected]
        workoutTypeSlider.maximumValue = Float(workoutTypes.count-1)

        refreshButtonText()
    }

    @IBAction func segmentedControlDidChange(sender: UISegmentedControl) {
        self.refreshButtonText()
    }
    
    @IBAction func sliderViewChanged(sender: UISlider) {
        var valToSet = roundf(workoutTypeSlider.value)
        workoutTypeSlider.setValue(valToSet, animated: true)
        let workoutSelected = Int(self.workoutTypeSlider.value)
        workoutTypeLabel.text = workoutTypes[workoutSelected]
        
        self.refreshButtonText()
    }
    
    @IBAction func bookNowButtonPushed(sender: UIButton) {
        self.performSegueWithIdentifier(paymentSegue, sender: self)
    }
    
    func refreshButtonText() {
        if let workoutTypeText = workoutTypeLabel.text {
            switch trainerTypeSegmentedController.selectedSegmentIndex {
            case 0: bookNowButton.setTitle("Book \(workoutTypeText) with Trainer X for $10", forState: UIControlState.Normal)
            case 1: bookNowButton.setTitle("Book \(workoutTypeText) with Trainer Pro for $10", forState: UIControlState.Normal)
            default: break
            }
        }
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == paymentSegue {
//            if let destination = segue.destinationViewController as? PaymentViewController {
//                destination.classPrice = classPrice
//            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

