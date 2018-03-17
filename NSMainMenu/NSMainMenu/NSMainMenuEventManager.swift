//
//  NSMainMenuEventManager.swift
//  NSMainMenu
//
//  Created by 刘小二 on 2018/2/13.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class NSMainMenuEventManager: NSObject {

    @IBAction func sayGood(_ sender: NSMenuItem) {
        print("good")
    }
    @IBOutlet weak var good: NSMenuItem!
}
