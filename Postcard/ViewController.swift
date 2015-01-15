//
//  ViewController.swift
//  Postcard
//
//  Created by Jason Clark on 1/12/15.
//  Copyright (c) 2015 Jason Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var secondLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("View Did Load Called")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        println("sendMailButtonPressed")
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        sender.setTitle("Pressed", forState: UIControlState.Normal)
        secondLabel.text = "Your name is \(enterNameTextField.text)"
        secondLabel.backgroundColor = UIColor.purpleColor()
        
        
    }

}

