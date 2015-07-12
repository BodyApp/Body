//
//  RateInstructorViewController.swift
//  Body
//
//  Created by Peter Li on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController {
    
//    @IBOutlet weak var instructorBack: UILabel!
    @IBOutlet weak var feedbackBox: UITextView!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var levelField: UITextField!
    
    var grayColor = UIColor(red:133, green:136, blue:141, alpha:1).CGColor
    let resultsSegue = "SegueToResults"

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // color instructor's icon border
//        instructorBack.layer.cornerRadius = instructorBack.bounds.width/2
//        instructorBack.layer.borderWidth = 2
//        instructorBack.layer.borderColor = grayColor
        
        // make a border for text view
        feedbackBox.layer.cornerRadius = 5
        feedbackBox.layer.borderWidth = 2
        feedbackBox.layer.borderColor = grayColor
        
        // round the borders for text fields
        weightField.borderStyle = .RoundedRect
        timeField.borderStyle = .RoundedRect
        levelField.borderStyle = .RoundedRect
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destination = segue.destinationViewController as? ResultsViewController {
            if segue.identifier == resultsSegue {
                destination.weight = weightField.text
                destination.time = timeField.text
                destination.level = levelField.text
            }
        }
        
    }
    
    @IBAction func submitButton(sender: AnyObject) {
        
        self.performSegueWithIdentifier(resultsSegue, sender: self)
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
