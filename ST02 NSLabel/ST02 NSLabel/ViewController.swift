//
//  ViewController.swift
//  ST02 NSLabel
//
//  Created by 刘小二 on 2018/2/17.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var monitor: Any?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = NSTextField()
        label.frame = NSRect(x: 100, y: 100, width: 100, height: 100)
        label.focusRingType = .none
        label.isEditable = true
        
        label.isBordered = false
        label.isSelectable = false
//        label.selectText(nil)
        label.backgroundColor = NSColor.red
//        label.textColor = NSColor.blue
//        label.resignFirstResponder()
        view.addSubview(label)
        
        let string = NSMutableAttributedString(string: "http://www.baidu.com")
//        string.beginEditing()
        string.addAttribute(NSAttributedStringKey.foregroundColor, value: NSColor.blue, range: NSRange(location: 0, length: string.length))
        print(NSRangeFromString(string.string))
//        string.endEditing()
        label.attributedStringValue = string
    
    }

    override var representedObject: Any? {
        didSet {
        
        }
    }


}

