//
//  ViewController.swift
//  NSToolBar2
//
//  Created by 刘小二 on 2018/2/12.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer?.backgroundColor = NSColor.red.cgColor
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()        
        self.view.window?.titleVisibility = .hidden

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

