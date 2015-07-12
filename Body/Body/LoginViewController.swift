//
//  LoginViewController.swift
//  Body
//
//  Created by Daniel Liebeskind on 7/12/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit
import TwitterKit
import DigitsKit


class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var centerOfView = self.view.center
        
        let logInButton = TWTRLogInButton(logInCompletion: {
            (session: TWTRSession!, error: NSError!) in
            println(session.userName)
            self.dismissViewControllerAnimated(true, completion: nil)
        })
        
        logInButton.center = CGPoint(x: centerOfView.x, y: centerOfView.y - 25)
        self.view.addSubview(logInButton)
        
        let authenticateButton = DGTAuthenticateButton(authenticationCompletion: {
            (session: DGTSession!, error: NSError!) in
            println(session)
            self.dismissViewControllerAnimated(true, completion: nil)
        })
        authenticateButton.center = CGPoint(x: centerOfView.x, y: centerOfView.y + 25)
        self.view.addSubview(authenticateButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
