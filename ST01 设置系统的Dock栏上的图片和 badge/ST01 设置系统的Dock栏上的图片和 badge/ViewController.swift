//
//  ViewController.swift
//  ST01 设置系统的Dock栏上的图片和 badge
//
//  Created by 刘小二 on 2018/2/17.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.window?.dockTile.contentView = self.view
        view.window?.dockTile.display()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

