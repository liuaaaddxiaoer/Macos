//
//  ViewController.swift
//  NSArrayController
//
//  Created by 刘小二 on 2018/2/3.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var value = 10
    
    @IBOutlet weak var textLabel: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func mouseDown(with event: NSEvent) {
        textLabel.stringValue = slider.stringValue
    }


}

