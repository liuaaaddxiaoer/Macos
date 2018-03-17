//
//  ViewController.swift
//  UITest
//
//  Created by 刘小二 on 2018/2/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var alertLabel: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func alert(_ sender: NSButton) {
        
        let alert = NSAlert()
        alert.messageText = "UI Test"
        alert.informativeText = "单元测试 UI测试"
        alert.addButton(withTitle: "button1")
        alert.addButton(withTitle: "button2")
        alert.addButton(withTitle: "button3")
        let result = alert.runModal()
        switch result {
        case .alertFirstButtonReturn:
            self.alertLabel.stringValue = "button1"
        case .alertSecondButtonReturn:
            self.alertLabel.stringValue = "button2"
        default:
            self.alertLabel.stringValue = "button3"
        }
    }
    
    

}

