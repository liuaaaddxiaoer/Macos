//
//  NSOutLineViewVC.swift
//  NOutlineView
//
//  Created by 刘小二 on 2018/2/4.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

// https://www.jianshu.com/p/80772f759989
class NSOutLineViewVC: NSViewController {
    
    var rootArray = [RootModel]()
    
    @IBOutlet weak var outLineView: NSOutlineView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        
    }
    
    
    // MARK - : helper
    func setupData() {
        let leafModel = LeafModel("ios")

        let leaf2Model = LeafModel("android")
        let lea3fModel = LeafModel("h5")
        
        let rootM1 = RootModel()
        rootM1.name = "ENABLE111"
        rootM1.isLead = false
        rootM1.children = [leafModel,leaf2Model,lea3fModel]
        
        let rootM2 = RootModel()
        rootM2.name = "ENABLE222"
        rootM2.isLead = false
        rootM2.children = [leafModel,leaf2Model,lea3fModel]
        
        rootArray.append(rootM1)
        rootArray.append(rootM2)
        
        outLineView.reloadData()
    }
    
    
}


extension NSOutLineViewVC: NSOutlineViewDelegate,NSOutlineViewDataSource {
    
    func outlineView(_ outlineView: NSOutlineView, isItemExpandable item: Any) -> Bool {
        return (item is RootModel)
    }
    
    func outlineView(_ outlineView: NSOutlineView, numberOfChildrenOfItem item: Any?) -> Int {
        guard let item = item as? RootModel else {
            return rootArray.count
        }
        return item.children.count
    }
    
    func outlineView(_ outlineView: NSOutlineView, child index: Int, ofItem item: Any?) -> Any {
        guard let items = item as?RootModel else {
            return rootArray[index]
        }
        return items.children[index]
    }
    
    func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView? {
        
        var cell: NSTableCellView?
        
        guard let _ = item as?RootModel else {
            cell = outlineView.makeView(withIdentifier: .init("DataCell"), owner: self) as? NSTableCellView
            cell?.textField?.stringValue = (item as! LeafModel).leafName
            return cell
        }
        cell = outlineView.makeView(withIdentifier: .init("HeaderCell"), owner: self) as? NSTableCellView
        cell?.textField?.stringValue = (item as! RootModel).name
        return cell
    }
}
