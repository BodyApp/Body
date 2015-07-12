//
//  PaymentViewController.swift
//  Body
//
//  Created by Peter Li on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
    
    var price = 10
    var trainerType = 0
    var trainerTypeString = String()
    var workoutType = String()
    var chooseClassInstance = ChooseClass()

    @IBOutlet weak var creditCardTextField: UITextView!
    @IBOutlet weak var promoCodeTextField: UITextView!
    @IBOutlet weak var inviteFriendsButton: UIButton!
    @IBOutlet weak var trainerTypeWorkoutTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creditCardTextField.layer.borderWidth = 1
        creditCardTextField.layer.borderColor = UIColor(red:0.652, green:0.667, blue:0.66, alpha:1).CGColor
        
        promoCodeTextField.layer.borderWidth = 1
        promoCodeTextField.layer.borderColor = UIColor(red:0.652, green:0.667, blue:0.66, alpha:1).CGColor
        
        inviteFriendsButton.layer.borderWidth = 3
        inviteFriendsButton.layer.borderColor = UIColor(red:0.038, green:0.095, blue:0.283, alpha:1).CGColor
        
        var trainerTypes = chooseClassInstance.getTrainerTypes()
        trainerTypeString = trainerTypes[trainerType]
        
        var trainerTypeArray = split(trainerTypeString) {$0 == " "}
        trainerTypeWorkoutTypeLabel.text = "\(workoutType) \(trainerTypeArray[1])"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
