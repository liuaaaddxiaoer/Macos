//
//  ViewController.swift
//  NSCollectionView2
//
//  Created by 刘小二 on 2018/2/12.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var collectionView: NSCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        NSEvent
    }

    override var representedObject: Any? {
        didSet {
        }
    }


}

extension ViewController: NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: .init("CustomItem"), for: indexPath)
        item.textField?.stringValue = "String \(indexPath.item)"
        return item
    }
    
    func collectionView(_ collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSView {
        
        if (kind == NSCollectionView.SupplementaryElementKind.sectionHeader) {
            return collectionView.makeSupplementaryView(ofKind: kind, withIdentifier: .init("Header"), for: indexPath)
        } else {
            return collectionView.makeSupplementaryView(ofKind: kind, withIdentifier: .init("Footer"), for: indexPath)
        }
    }
    
}

extension ViewController: NSCollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> NSSize {
        return NSSize(width: collectionView.bounds.width, height: 50)
    }
    
    func collectionView(_ collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>) {
        let toIndexPath = NSIndexPath(forItem: collectionView.numberOfItems(inSection: 0) - 1, inSection: 0) as IndexPath
        collectionView.performBatchUpdates({
            self.collectionView.moveItem(at: indexPaths.first!, to: toIndexPath)
        }, completionHandler: nil)
    }
    
}
