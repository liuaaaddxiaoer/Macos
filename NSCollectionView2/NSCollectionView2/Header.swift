//
//  Header.swift
//  NSCollectionView2
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class Header: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.green.cgColor
    }
    
}
