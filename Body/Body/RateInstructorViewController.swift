//
//  RateInstructorViewController.swift
//  Body
//
//  Created by Peter Li on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class RateInstructorViewController: UIViewController {
    
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var levelField: UITextField!
    @IBOutlet weak var feedbackBox: UITextView!
    
    let resultsSegue = "SegueToResults"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get the image for instructor's profile
        // get instructor's name, put in Rate Instructor label

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destination = segue.destinationViewController as! ResultsViewController
        if segue.identifier == resultsSegue {
            destination.weight = weightField.text 
            destination.time = timeField.text
            destination.level = levelField.text
        }
        
    }
    
    @IBAction func submitButton(sender: AnyObject) {
        
        performSegueWithIdentifier(resultsSegue, sender: sender)
        // take care of feedback
        
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
