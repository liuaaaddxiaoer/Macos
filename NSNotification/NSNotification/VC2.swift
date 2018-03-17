//
//  VC2.swift
//  NSNotification
//
//  Created by 刘小二 on 2018/2/11.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class VC2: NSViewController {

    override func viewDidDisappear() {
        
        super.viewDidDisappear()
        NotificationCenter.default.addObserver(self, selector: #selector(not(_:)), name: NSNotification.Name("post"), object: nil)
    }
    
    @objc func not(_ noti: NSNotification) {
        let alert = NSAlert().runModal()
        print(1)
    }
    
}
