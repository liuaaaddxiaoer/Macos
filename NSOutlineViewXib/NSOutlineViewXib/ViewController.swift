//
//  ViewController.swift
//  NSOutlineViewXib
//
//  Created by 刘小二 on 2018/2/4.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var outLineView: NSOutlineView!
    
    @IBOutlet var treeController: NSTreeController!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        outLineView.expandItem(nil, expandChildren: true)
    }
    func setupData() {
        let data = ["name": "刘小二"] as [String : Any]
        let dict = NSMutableDictionary(dictionary: data)
        dict["children"] = [NSLeafModel(),NSLeafModel(),NSLeafModel()]
        
        print(dict)
        treeController.addObject(dict)
        treeController.addObject(dict)
        
        
    }
}



extension ViewController: NSOutlineViewDelegate,NSOutlineViewDataSource {
    
    
    func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView? {
        if !((item as? NSTreeNode)?.representedObject is NSLeafModel) {
            return outlineView.makeView(withIdentifier: .init(rawValue: "HeaderCell"), owner: self)
        } else {
            return outlineView.makeView(withIdentifier: .init(rawValue: "DataCell"), owner: self)
        }
    }
    
    func outlineView(_ outlineView: NSOutlineView, pasteboardWriterForItem item: Any) -> NSPasteboardWriting? {
        let ptm = NSPasteboardItem()
        if !((item as? NSTreeNode)?.representedObject is NSLeafModel) {
            return nil
        }else {
            ptm.setString(((item as! NSTreeNode).representedObject as! NSLeafModel).name, forType: .string)
            return ptm
        }
        
    }
    
    func outlineView(_ outlineView: NSOutlineView, validateDrop info: NSDraggingInfo, proposedItem item: Any?, proposedChildIndex index: Int) -> NSDragOperation {
        print(item!)
        let canDrag = index > 0  && item != nil
        return canDrag ? .move : []
    }
    func outlineView(_ outlineView: NSOutlineView, acceptDrop info: NSDraggingInfo, item: Any?, childIndex index: Int) -> Bool {
        return true
    }
    
}
