//
//  ResultsViewController.swift
//  Body
//
//  Created by Peter Li on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var weight = String()
    var time = String()
    var level = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func nextWorkoutButtonPushed(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
