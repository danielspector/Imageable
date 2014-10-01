//
//  ViewController.swift
//  Imageable
//
//  Created by Daniel Spector on 10/1/14.
//  Copyright (c) 2014 Daniel Spector. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        if messageLabel.hidden == true {
            messageLabel.hidden = false
        } else {
            messageLabel.hidden = true
        }
        
        messageLabel.textColor = UIColor.orangeColor()
        messageLabel.text = "To: \(enterNameTextField.text) \n \(enterMessageTextField.text)"
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

