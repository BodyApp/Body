//
//  NavigationViewController.swift
//  Body
//
//  Created by Daniel Liebeskind on 7/12/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logo = UIImage(named: "BodyLogo");
        let imageView = UIImageView(image:logo)
        let logoWidth = CGFloat(85.7)
        let logoHeight = CGFloat(32.2)
        imageView.frame.size.width = logoWidth
        imageView.frame.size.height = logoHeight
        imageView.frame.origin = CGPoint(x: (self.navigationBar.bounds.width - logoWidth)/2, y: 5)
        
        self.navigationBar.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
