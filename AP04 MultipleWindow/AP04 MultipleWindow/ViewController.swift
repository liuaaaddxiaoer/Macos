//
//  ViewController.swift
//  AP04 MultipleWindow
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func mouseDown(with event: NSEvent) {
        print(1)
        let windo2 = Window2VC(windowNibName: .init("Window2"))
        windo2.showWindow(self)
    }
    
    override func touchesBegan(with event: NSEvent) {
        
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

