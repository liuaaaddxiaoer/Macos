//
//  ViewController.swift
//  Storybords
//
//  Created by 刘小二 on 2018/2/3.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = NSButton(title: "haha", target: self, action: #selector(hello))
        view.addSubview(btn)
        title = "sb"
    }
    
    @objc func hello() {
        print(self.view.window ?? "1")
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

