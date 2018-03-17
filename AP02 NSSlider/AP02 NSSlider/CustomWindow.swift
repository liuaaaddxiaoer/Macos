//
//  CustomWindow.swift
//  AP02 NSSlider
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class CustomWindow: NSWindow {
    override func awakeFromNib() {
        super.awakeFromNib()
        let slider = NSSlider()
        slider.frame = NSRect(x: 0, y: 0, width: 300, height: 200)
        slider.minValue = 0
        slider.maxValue = 10
//        slider.isVertical = true
        slider.trackFillColor = NSColor.red
        slider.numberOfTickMarks = 3
        slider.tickMarkPosition = .above
        
        contentView?.addSubview(slider)
    }
}
