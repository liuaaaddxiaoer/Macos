//
//  AppDelegate.swift
//  AP09 NSPopver
//
//  Created by 刘小二 on 2018/2/14.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa
import ScreenSaver
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBAction func click(_ sender: Any) {
        NSApp.windows[0].makeKeyAndOrderFront(nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            NSApp.windows[0].close()
        }
     
    }
    override func awakeFromNib() {
        super.awakeFromNib()
//        NSApp.activate(ignoringOtherApps: true)
//        NSApp.terminate(nil)
        ScreenSaverView
        
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
       
    }


}

