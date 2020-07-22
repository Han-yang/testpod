//
//  ViewController.swift
//  testpod
//
//  Created by Han-yang on 07/22/2020.
//  Copyright (c) 2020 Han-yang. All rights reserved.
//

import UIKit

import testpod_hy
 
class ViewController: UIViewController {
 
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize:20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
 
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame:CGRect(x: 10, y: 60, width: 200, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
        LabUtil.printtest("my")
        LabUtil2.printtest("my")
    }
 
    @objc func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
 
}
