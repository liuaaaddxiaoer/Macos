//
//  ViewController.swift
//  NSCollectionView1
//
//  Created by 刘小二 on 2018/2/12.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var collectionView: NSCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gridLayout = NSCollectionViewGridLayout()
        gridLayout.maximumNumberOfColumns = 1
        gridLayout.maximumItemSize = NSSize(width: 0, height: 200)
        gridLayout.minimumItemSize = NSSize(width: 0, height: 100)

        collectionView.collectionViewLayout = gridLayout
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        print(collectionView.makeItem(withIdentifier: .init("ImageCollectionViewItem"), for: indexPath))
        return collectionView.makeItem(withIdentifier: .init("ImageCollectionViewItem"), for: indexPath)
    }
}

extension ViewController: NSCollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> NSSize {
//        return NSSize(width: 300, height: 300)
//    }
    
    func collectionView(_ collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>) {
        print(indexPaths)
    }
}

