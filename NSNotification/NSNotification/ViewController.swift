//
//  ViewController.swift
//  NSNotification
//
//  Created by 刘小二 on 2018/2/11.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.post(name: Notification.Name("post"), object: nil)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

