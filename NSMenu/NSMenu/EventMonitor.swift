//
//  EventMonitor.swift
//  NSMenu
//
//  Created by 刘小二 on 2018/2/3.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

public class EventMonitor {
    
    private var monitor: Any?
    private var mask: NSEvent.EventTypeMask
    private var handler: (NSEvent?) -> ()
    
    init(mask: NSEvent.EventTypeMask, handler: @escaping (NSEvent?) -> ()) {
        self.mask = mask
        self.handler = handler
    }
    
    deinit {
        close()
    }
    
    func start() {
       monitor = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler)
    }
    
    func close() {
        if (monitor != nil) {
            NSEvent.removeMonitor(monitor!)
            monitor = nil
        }
    }
}
