//
//  ViewController.swift
//  AP09 NSPopver
//
//  Created by 刘小二 on 2018/2/14.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa
class ViewController: NSViewController {
    
    var popver: NSPopover = NSPopover()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func click(_ sender: NSButton) {
//        if (popver.isShown) {
//            popver.close()
//        } else {
//            popver.contentSize = NSSize(width: 100, height: 100)
//            popver.contentViewController = VC2()
//            popver.delegate = self
//            popver.show(relativeTo: sender.bounds.insetBy(dx: 0, dy: 0), of: sender, preferredEdge: .maxY)
//        }
        let alert = NSAlert()
        //        alert.alertStyle = .warning
        alert.addButton(withTitle: "ios")
        alert.messageText = "ios"
        alert.informativeText = "h5"
        alert.showsHelp = true
        alert.showsSuppressionButton = true
        alert.beginSheetModal(for: view.window!) { (response) in
            
        }
    }
    
}

extension ViewController: NSPopoverDelegate {
    func detachableWindow(for popover: NSPopover) -> NSWindow? {
        return nil
        
    }
    func popoverShouldDetach(_ popover: NSPopover) -> Bool {
        return true
    }
    func popoverShouldClose(_ popover: NSPopover) -> Bool {
        return false
    }
}

