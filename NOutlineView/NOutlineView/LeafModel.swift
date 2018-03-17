//
//  LeafModel.swift
//  NOutlineView
//
//  Created by 刘小二 on 2018/2/4.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class LeafModel:NSObject {
    @objc dynamic var leafName = ""
    @objc dynamic var hasChildren = false
    init(_ name: String) {
        self.leafName = name
    }
}
