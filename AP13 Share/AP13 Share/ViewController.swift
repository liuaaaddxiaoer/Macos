//
//  ViewController.swift
//  AP13 Share
//
//  Created by 刘小二 on 2018/2/15.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var shareBtn: NSButton!
    @IBOutlet var textView: NSTextView!
    @IBOutlet var shareImageV: NSImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.shareBtn.image = NSImage(named: NSImage.Name.shareTemplate)
        print(shareImageV)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @objc func hs(_ sender: Any) {
        print(2)
    }


    @IBAction func share(_ sender: NSButton) {
        
        let sharePicker = NSSharingServicePicker(items: [textView.string,shareImageV.image ?? NSImage()])
        sharePicker.show(relativeTo: sender.bounds, of: sender, preferredEdge: .maxY)
        sharePicker.delegate = self
    }
}

extension ViewController: NSSharingServicePickerDelegate,NSSharingServiceDelegate {
    
    func sharingService(_ sharingService: NSSharingService, sourceWindowForShareItems items: [Any], sharingContentScope: UnsafeMutablePointer<NSSharingService.SharingContentScope>) -> NSWindow? {
        return view.window
    }
    func sharingServicePicker(_ sharingServicePicker: NSSharingServicePicker, delegateFor sharingService: NSSharingService) -> NSSharingServiceDelegate? {
        return self
    }
}
