//
//  WorkoutClassViewController.swift
//  Body
//
//  Created by Peter Li on 7/12/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class WorkoutClassViewController: UIViewController {
    
    @IBOutlet weak var member1: UIImageView!
    @IBOutlet weak var member2: UIImageView!
    @IBOutlet weak var member3: UIImageView!
    @IBOutlet weak var member4: UIImageView!
    @IBOutlet weak var member5: UIImageView!
    @IBOutlet weak var member6: UIImageView!
    
    var chosenTeammate : Int?
    let feedbackSegue = "SegueToFeedback"
    var timer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // highlight the picture of chosen teammate
        if let teammate = chosenTeammate {
            if teammate == 1 {
                selectMember(member1)
            }
            if teammate == 2 {
                selectMember(member2)
            }
            if teammate == 3 {
                selectMember(member3)
            }
            if teammate == 4 {
                selectMember(member4)
            }
            if teammate == 5 {
                selectMember(member5)
            }
            if teammate == 6 {
                selectMember(member6)
            }
        }
        
        // set and start timer for 5s
        timer = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: ("timerFinished:"),
            userInfo: nil, repeats: false)

    }
    
    override func viewWillDisappear(animated: Bool) {
        timer.invalidate()
    }
    
    func timerFinished(timer: NSTimer) {
        
        timer.invalidate()
        performSegueWithIdentifier(feedbackSegue, sender: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func selectMember(member: UIImageView) {
        member.layer.borderWidth = 12
        member.layer.borderColor = UIColor(red: 255, green: 103, blue: 0, alpha:1).CGColor
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
