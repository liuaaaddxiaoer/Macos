//
//  LeftVC.swift
//  NSContainerView
//
//  Created by 刘小二 on 2018/2/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class LeftVC: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    override func viewWillAppear() {
        super.viewWillAppear()
        print("viewwillapper")
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        print("viewDidAppear")
    }
    
    override func viewWillLayout() {
        super.viewWillLayout()
        print("viewWillLayout")
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        print("viewDidLayout")
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        print("viewWillDisappear")
    }
    override func viewDidDisappear() {
        super.viewDidDisappear()
        print("viewDidDisappear")
    }
    
    deinit {
        print("dealloc")
    }

}
