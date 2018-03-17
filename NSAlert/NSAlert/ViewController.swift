//
//  ViewController.swift
//  NSAlert
//
//  Created by 刘小二 on 2018/2/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        alert()
    }

    func alert() {
        let alert = NSAlert()
//        alert.messageText = "warn"
//        alert.informativeText = "这个是提示信息"
//
//        for _ in 0..<10{
//            alert.addButton(withTitle: "button1")
//
//        }
//        let result = alert.runModal()
//        switch result {
//        case .alertFirstButtonReturn:
//            print("button1")
//        default:
//            break
//        }
        let window = NSWindow(contentViewController: self)
        
        alert.beginSheetModal(for: view.window ?? window) { (response) in
            print("response i s \(response)")
        }
    }

}

