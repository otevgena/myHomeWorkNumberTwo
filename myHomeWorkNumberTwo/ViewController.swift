//
//  ViewController.swift
//  myHomeWorkNumberTwo
//
//  Created by Евгений Попов on 19.08.2020.
//  Copyright © 2020 Evgeniy Popov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLampLabel: UILabel!
    @IBOutlet var yellowLampLabel: UILabel!
    @IBOutlet var greenLampLavel: UILabel!
    @IBOutlet var showTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLampLabel.alpha = 1
        yellowLampLabel.alpha = 0.3
        greenLampLavel.alpha = 0.3
        
        redLampLabel.layer.masksToBounds = true
        yellowLampLabel.layer.masksToBounds = true
        greenLampLavel.layer.masksToBounds = true
        
        showTextButton.layer.cornerRadius = 10
        redLampLabel.layer.cornerRadius = 40
        yellowLampLabel.layer.cornerRadius = 40
        greenLampLavel.layer.cornerRadius = 40
    }
    
    @IBAction func turningLightButton() {
        
        if redLampLabel.alpha == 1 {
            redLampLabel.alpha = 0.3
            yellowLampLabel.alpha = 1
            showTextButton.setTitle("Next", for: .normal)
            return
        }
        if yellowLampLabel.alpha == 1 {
            yellowLampLabel.alpha = 0.3
            greenLampLavel.alpha = 1
            return
        }
        if greenLampLavel.alpha == 1 {
            greenLampLavel.alpha = 0.3
            redLampLabel.alpha = 1
            showTextButton.setTitle("START", for: .normal)
        }
    }
}
