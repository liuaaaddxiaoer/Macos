//
//  AppDelegate.swift
//  AP14 Responder Chain
//
//  Created by 刘小二 on 2018/2/16.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @objc func sendMsg(_ sender: Any) {
        print("AppDelegate")
    }
}

