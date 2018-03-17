//
//  RightVC.swift
//  NSContainerView
//
//  Created by 刘小二 on 2018/2/10.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class RightVC: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad22222")
    }
    override func viewWillAppear() {
        super.viewWillAppear()
        print("viewwillapper2222")
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        print("viewDidAppear2222")
    }
    
    override func viewWillLayout() {
        super.viewWillLayout()
        print("viewWillLayout2222")
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        print("viewDidLayout222")
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        print("viewWillDisappear222")
    }
    override func viewDidDisappear() {
        super.viewDidDisappear()
        print("viewDidDisappear2222")
    }
    
    deinit {
        print("dealloc2222")
    }

}
