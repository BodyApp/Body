//
//  PaymentViewController.swift
//  Body
//
//  Created by Peter Li on 7/11/15.
//  Copyright (c) 2015 Body. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var promoCodeText: UITextField!
    @IBOutlet weak var joinClassButton: UIButton!
    
    
    var classPrice : Double?
    var backgroundPicture : UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set background
//        if let picture = backgroundPicture {
//            backgroundImageView.image = picture
//        }
        
        //set price label
        if let price = classPrice {
            priceLabel.text = classPrice?.description
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addFriend() {
        
        // add friend to your workout class
        
    }
    
    @IBAction func applyPromoCode() {
        
        // check validity of promotion code
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "joinClassSegue" {
            
        }
        
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
