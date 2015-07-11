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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookNowButton.layer.cornerRadius = 5
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

