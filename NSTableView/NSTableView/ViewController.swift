//
//  ViewController.swift
//  NSTableView
//
//  Created by 刘小二 on 2018/2/3.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var strings = ["ios","h5","android"]
    
    @IBOutlet weak var tableView: NSTableView!
    @IBOutlet weak var textField: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func addFruit(_ sender: Any) {
        let strValue = textField.stringValue
        strings.append(strValue)
        tableView.reloadData()
    }
    
}

extension ViewController: NSTableViewDataSource {
    
    
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return strings.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return strings[row]
    }
    
}
