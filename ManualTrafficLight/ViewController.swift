//
//  ViewController.swift
//  ManualTrafficLight
//
//  Created by Vladimir on 19/08/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var toggleButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 30
        yellowView.layer.cornerRadius = 30
        greenView.layer.cornerRadius = 30
    }

    @IBAction func toggleButtonPressed() {
        let valueOfEnabled = CGFloat(1)
        
        switch valueOfEnabled {
        case redView.alpha:
            redView.alpha = 0.3
            yellowView.alpha = 1
        case yellowView.alpha:
            yellowView.alpha = 0.3
            greenView.alpha = 1
        case greenView.alpha:
            greenView.alpha = 0.3
            redView.alpha = 1
        default:
            redView.alpha = 1
            toggleButton.setTitle("Next", for: .normal)
        }
    }
}

