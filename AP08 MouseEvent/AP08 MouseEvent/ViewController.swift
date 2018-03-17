//
//  ViewController.swift
//  AP08 MouseEvent
//
//  Created by 刘小二 on 2018/2/14.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet var click: NSButton!
    
    @IBAction func clickEvent(_ sender: NSButton) {
        let menu = NSMenu(title: "haha")
        let item1 = NSMenuItem(title: "ios", action: #selector(ios), keyEquivalent: "s")
        menu.addItem(item1)
        menu.minimumWidth = 300
        sender.menu = menu
        
    }
    @objc func ios() {
        print("ios")
    }
}

