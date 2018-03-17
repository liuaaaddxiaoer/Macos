//
//  CustomLayout.swift
//  NSCollectionView2
//
//  Created by 刘小二 on 2018/2/12.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class CustomLayout: NSCollectionViewLayout {
    
    let itemHeight:CGFloat = 50.0
    
    override var collectionViewContentSize: NSSize {
        
        let count = collectionView?.numberOfItems(inSection: 0) ?? 0
        let size = collectionView?.bounds.size
        
        return NSSize(width: size?.width ?? 0.0, height: CGFloat(count) * itemHeight)
    }
    
    override func layoutAttributesForElements(in rect: NSRect) -> [NSCollectionViewLayoutAttributes] {
        let count = collectionView?.numberOfItems(inSection: 0) ?? 0
        var attributes = [NSCollectionViewLayoutAttributes]()
        for index in 0..<count {
            let indexPath = NSIndexPath(forItem: index, inSection: 0)
            let attribute = layoutAttributesForItem(at: indexPath as IndexPath)
            attributes.append(attribute!)
        }
        return attributes
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes? {
        let attribute = NSCollectionViewLayoutAttributes(forItemWith: indexPath)
        let size = collectionView?.bounds.size
        attribute.frame = NSRect(x: 0, y: itemHeight * CGFloat(indexPath.item) + 1, width: size!.width , height: itemHeight)
        return attribute
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: NSRect) -> Bool {
        return true
    }
    override func layoutAttributesForSupplementaryView(ofKind elementKind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes? {
       
        return self.layoutAttributesForItem(at: indexPath)
    }
}

