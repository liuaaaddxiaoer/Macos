//
//  ViewController.swift
//  NSPopver
//
//  Created by 刘小二 on 2018/2/11.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var button: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func click(_ sender: NSButton) {
        
        let vc = NSStoryboard(name: .init("Main"), bundle: nil).instantiateController(withIdentifier: .init("sb")) as! NSViewController
        
        let popver = NSPopover()
        popver.behavior = .semitransient
        popver.contentViewController = vc
        popver.contentSize = NSSize(width: 200, height: 200)
        popver.show(relativeTo: button.bounds, of: button, preferredEdge: .maxX)
        
        
    }
    
}

