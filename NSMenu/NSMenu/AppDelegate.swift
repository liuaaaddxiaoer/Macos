//
//  AppDelegate.swift
//  NSMenu
//
//  Created by 刘小二 on 2018/2/3.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var statusItem: NSStatusItem?
    var popver: NSPopover?
    var monitor: EventMonitor?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem!.image = NSImage(named:NSImage.Name(rawValue: "4"))
        statusItem?.action =  #selector(AppDelegate.hello)
        
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "姓名", action: #selector(AppDelegate.hello), keyEquivalent: "s"))
//        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "年龄", action: #selector(AppDelegate.hello), keyEquivalent: "q"))
        
//        statusItem?.menu = menu
        
        
        // 显示popver
        popver = NSPopover()
        
        popver?.contentViewController = PopverVC()
        
        monitor = EventMonitor(mask: [.leftMouseDown,.rightMouseDown], handler: { (event) in
            if (self.popver?.isShown)! {
                self.popver?.performClose(event)
            }
        })
        monitor?.start()
    }
    
    
    
    @objc func hello() {
        // 显示popver
        if (popver?.isShown)! {
            popver?.close()
        } else {
            popver?.show(relativeTo: (statusItem?.button?.bounds ?? .zero), of: statusItem?.button ?? NSView(), preferredEdge: NSRectEdge.minX)
        }
    }
    
    
    


}

