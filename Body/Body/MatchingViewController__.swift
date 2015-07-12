//
//  TipsViewController.swift
//  Body
//
//  Created by Peter Li on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class MatchingViewController: UIViewController {
    
    let matchedSegue = "SegueToMatched"
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // starts the timer immediately, no repeat, calls timerFinished once time ends

        timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("timerFinished:"), userInfo: nil, repeats: false)
        
    }
    
    func timerFinished(timer: NSTimer) {
    
        // invalidate timer, ensure that it doesn't continue to run
//        timer.invalidate()
        performSegueWithIdentifier(matchedSegue, sender: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        timer.invalidate()
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
