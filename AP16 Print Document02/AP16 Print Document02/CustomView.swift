//
//  CustomView.swift
//  AP16 Print Document02
//
//  Created by 刘小二 on 2018/2/16.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class CustomView: NSView {
    override var acceptsFirstResponder: Bool {
        return true
    }
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        let content = NSGraphicsContext.current!
        if content.isDrawingToScreen {
            NSColor.red.set()
            dirtyRect.fill()
        } else {
            NSColor.blue.set()
            dirtyRect.fill()
        }
    }
    
    @objc func print2(_ sender: Any) {
        let printOpetion = NSPrintOperation(view: self)
        printOpetion.showsPrintPanel = true
        printOpetion.runModal(for: self.window!, delegate: nil, didRun: nil, contextInfo: nil)
    }

 
}
