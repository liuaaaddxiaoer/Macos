//
//  LabelCollectionItem.swift
//  NSCollectionView
//
//  Created by 刘小二 on 2018/2/3.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class LabelCollectionItem: NSCollectionViewItem {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer?.backgroundColor = NSColor.red.cgColor
    }
    
}
