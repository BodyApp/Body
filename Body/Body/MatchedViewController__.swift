//
//  MatchedViewController.swift
//  Body
//
//  Created by Peter Li on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class MatchedViewController: UIViewController {
    
//    @IBOutlet weak var instructorBack: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    let classSegue = "SegueToClass"
    var grayColor = UIColor(red:133, green:136, blue:141, alpha:1).CGColor
    var chosenTeammate = UIButton()
    var timer = NSTimer()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // color instructor's icon border
//        instructorBack.layer.cornerRadius = instructorBack.bounds.width/2
//        instructorBack.layer.borderWidth = 2
//        instructorBack.layer.borderColor = grayColor
        
        // color all the buttons
        for view in self.view.subviews as! [UIView] {
            if let button = view as? UIButton {
                button.layer.cornerRadius = button.bounds.width/2
                button.layer.borderWidth = 2
                button.layer.borderColor = grayColor
            }
        }
        
        // set and start timer for 5s
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: ("timerFinished:"),
            userInfo: nil, repeats: false)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        timer.invalidate()
    }
    
    func timerFinished(timer: NSTimer) {
        
        // end timer and segue into workout class
        timer.invalidate()
        performSegueWithIdentifier(classSegue, sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // pass info for chosen teammate
        if let destination = segue.destinationViewController as? WorkoutClassViewController {
            if segue.identifier == classSegue {
                destination.chosenTeammate = chosenTeammate.tag
            }
        }
        
    }
    
    @IBAction func classmateSelected(sender: AnyObject) {
        
        // deselect current teammate
        chosenTeammate.layer.borderWidth = 2
        chosenTeammate.layer.borderColor = grayColor
        
        // select new teammate
        switch sender.tag {
        case 1:
            selectButton(button1)
        case 2:
            selectButton(button2)
        case 3:
            selectButton(button3)
        case 4:
            selectButton(button4)
        case 5:
            selectButton(button5)
        case 6:
            selectButton(button6)
        default:
            break
        }
        chosenTeammate = sender as! UIButton
    }

    // helper methods
    
    func selectButton(button: UIButton) {
        button.layer.borderWidth = 12
        button.layer.borderColor = UIColor(red: 255, green: 103, blue: 0, alpha:1).CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
