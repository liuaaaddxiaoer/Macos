//
//  HeaderView.swift
//  NOutlineView
//
//  Created by 刘小二 on 2018/2/4.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class HeaderView: NSTableCellView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textField?.stringValue = "111"
    }
}
