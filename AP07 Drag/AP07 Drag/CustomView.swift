//
//  CustomView.swift
//  AP07 Drag
//
//  Created by 刘小二 on 2018/2/14.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa
import CoreGraphics
class CustomView: NSView {
    
    var image: NSImage?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        registerForDraggedTypes([.init(kUTTypeURL as String)])
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        if (image == nil) {
            NSColor.red.set()
            dirtyRect.fill()
        } else {
            image?.draw(in: dirtyRect)
        }
    }
}


extension CustomView {
    override func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation {
        print("enter")
        return NSDragOperation.copy
    }
    override func draggingUpdated(_ sender: NSDraggingInfo) -> NSDragOperation {
        print("update")
        return NSDragOperation.copy
    }
    
    override func draggingEnded(_ sender: NSDraggingInfo) {
        print("end")
    }
    override func draggingExited(_ sender: NSDraggingInfo?) {
        print("exit")
    }
    
    override func prepareForDragOperation(_ sender: NSDraggingInfo) -> Bool {
        print("prepare")
        return true
    }
    override func performDragOperation(_ sender: NSDraggingInfo) -> Bool {
        image = NSImage(pasteboard: sender.draggingPasteboard())
        guard let image = image else {
            return false
        }
        print(image)
        
        return true
    }
    override func concludeDragOperation(_ sender: NSDraggingInfo?) {
        display()
        print("conclude")
    }

}
