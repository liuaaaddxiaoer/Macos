//
//  AppController.swift
//  AP01 Test
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class AppController: NSObject {
    @IBOutlet var label: NSTextField!
    
    @IBAction func click(sender: Any) -> Void {
        print(sender)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        label.isSelectable = true
        label.stringValue = "你 好"
        label.backgroundColor = NSColor.red
        label.drawsBackground = true
        
//        NSWindow
    }
}
