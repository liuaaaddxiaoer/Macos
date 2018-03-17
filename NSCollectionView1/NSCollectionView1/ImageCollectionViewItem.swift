//
//  ImageCollectionViewItem.swift
//  NSCollectionView1
//
//  Created by 刘小二 on 2018/2/12.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ImageCollectionViewItem: NSCollectionViewItem {
    
    
    override var isSelected: Bool {
        didSet {
            super.isSelected = isSelected
            updateColor()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.red.cgColor
    }
    
    func updateColor() {
        if isSelected {
            switch self.highlightState {
            case .asDropTarget,.forDeselection:
                view.layer?.backgroundColor = NSColor.red.cgColor
            default:
                view.layer?.backgroundColor = NSColor.blue.cgColor
            }
        } else {
            view.layer?.backgroundColor = NSColor.red.cgColor
        }
    }
}
