//
//  ViewController.swift
//  NSBinding
//
//  Created by 刘小二 on 2018/2/12.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var currentUser: User?
    @objc dynamic var users: [User] = []
    @IBOutlet weak var tableView: NSTableView!
    @IBOutlet weak var nameTF: NSTextField!
    @IBOutlet weak var ageTF: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func update(_ sender: Any) {
        currentUser?.userName = nameTF.stringValue
        currentUser?.age = ageTF.integerValue
    }
    
}

extension ViewController : NSTableViewDelegate {
    func tableViewSelectionDidChange(_ notification: Notification) {
        print(users)
        nameTF.stringValue = users[tableView.selectedRow].userName
        ageTF.intValue = Int32(users[tableView.selectedRow].age)
        currentUser = users[tableView.selectedRow]
    }
}
