//
//  ViewController.swift
//  AP10 CustomSheet
//
//  Created by 刘小二 on 2018/2/14.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var window: NSWindow!
    override func viewDidLoad() {
        super.viewDidLoad()
        Bundle.main.loadNibNamed(.init("Sheet"), owner: self, topLevelObjects: nil)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func Click(_ sender: Any) {
        if (window == nil) {
            
        } else {
            print(window)
            print(view.window!)
            window.setContentSize(NSSize(width:10,height:300))
            view.window!.beginCriticalSheet(window, completionHandler: { (response) in
                
            })
        }
    }
    @IBAction func close(_ sender: Any) {
        view.window!.endSheet(window)
        window.close()
    }
    

}

