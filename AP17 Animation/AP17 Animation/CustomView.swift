//
//  CustomView.swift
//  AP17 Animation
//
//  Created by 刘小二 on 2018/2/17.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class CustomView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    override var acceptsFirstResponder: Bool {
        return true
    }
    
    override func mouseDown(with event: NSEvent) {
        let view = self.subviews[0]

        let basicAni = CABasicAnimation()
        basicAni.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        basicAni.duration = 5
        view.animations = [.init(rawValue: "frame"): basicAni]
        view.animator().frame = NSRect(x: 200, y: 200, width: 200, height: 200)
    }
}


