//
//  CustomView.swift
//  AP08 MouseEvent
//
//  Created by 刘小二 on 2018/2/14.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class CustomView: NSView {
    
    var startPoint: NSPoint = .zero
    var endPoint: NSPoint = .zero

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        NSColor.red.set()
        dirtyRect.fill()
        print(endPoint)
//        NSColor.blue.set()
//        NSBezierPath(rect: NSRect(x: startPoint.x, y: startPoint.y, width: endPoint.x - startPoint.x, height: endPoint.y - startPoint.y)).fill()
    }
    
    
}

extension CustomView {
    override func mouseUp(with event: NSEvent) {
        display()
    }
    override func mouseDown(with event: NSEvent) {
        startPoint = self.convert(event.locationInWindow, from: nil)
        print("mouseDown")
    }
    override func mouseMoved(with event: NSEvent) {
        
        print("mouseMoved")
    }
    override func mouseExited(with event: NSEvent) {
        print("mouseExited")
    }
    override func mouseDragged(with event: NSEvent) {
        endPoint = self.convert(event.locationInWindow, from: nil)
//        display()
       var point =  self.frame.origin;
        point.x += (endPoint.x - startPoint.x)
        point.y += (endPoint.y - startPoint.y)
        self.frame.origin = point
        
        
        print("mouseDragged")
    }
    override func mouseEntered(with event: NSEvent) {
        print("mouse enter")
    }
    override func rightMouseUp(with event: NSEvent) {
        print("rightMouseUp")
    }
    override func rightMouseDown(with event: NSEvent) {
        print("rightMouseDown")
    }
    override func touchesBegan(with event: NSEvent) {
        print("touchesBegan")
    }
    override func touchesMoved(with event: NSEvent) {
        print("touchesMoved")
    }
    override func scrollWheel(with event: NSEvent) {
        print("scrollWheel")
    }
    override func otherMouseDown(with event: NSEvent) {
        print("otherMouseDown")
    }
    override func keyDown(with event: NSEvent) {
        print(event)
    }
    
    override var acceptsFirstResponder: Bool {
        return true
    }
}
