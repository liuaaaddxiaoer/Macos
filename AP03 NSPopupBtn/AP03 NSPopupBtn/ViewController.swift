//
//  ViewController.swift
//  AP03 NSPopupBtn
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //
        let btn = NSPopUpButton()
        btn.frame = NSRect(x: 0, y: 300, width: 100, height: 100)
//        btn.pullsDown = true
        btn.addItem(withTitle: "ios")
        btn.addItem(withTitle: "android")
        btn.addItem(withTitle: "h5")
        btn.autoenablesItems = false
        btn.preferredEdge = .maxX
        view.addSubview(btn)
        
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

