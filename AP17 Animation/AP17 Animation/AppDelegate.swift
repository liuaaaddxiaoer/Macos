//
//  AppDelegate.swift
//  AP17 Animation
//
//  Created by 刘小二 on 2018/2/17.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let view = NSView()
        view.animator()
        view.animator()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

