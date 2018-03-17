//
//  CustomWindow.swift
//  AP01 Test
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class CustomWindow: NSWindow {

    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var click: NSButton!
    @IBAction func click(_ sender: Any) {
        let datePicke = NSDatePicker()
        datePicke.datePickerElements = .hourMinuteSecondDatePickerElementFlag
        datePicke.datePickerStyle = .textFieldDatePickerStyle
        datePicke.frame = NSRect(x: 0, y: 0, width: 200, height: 200)
        datePicke.backgroundColor = NSColor.red
        datePicke.drawsBackground = true
        datePicke.datePickerMode = .singleDateMode
        self.contentView?.addSubview(datePicke)
    }
}
