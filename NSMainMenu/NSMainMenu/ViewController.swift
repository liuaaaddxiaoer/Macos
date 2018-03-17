//
//  ViewController.swift
//  NSMainMenu
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(NSApplication.shared)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

