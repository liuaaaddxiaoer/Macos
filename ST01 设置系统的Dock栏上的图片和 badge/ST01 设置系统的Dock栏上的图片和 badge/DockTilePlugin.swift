//
//  DockTilePlugin.swift
//  ST01 设置系统的Dock栏上的图片和 badge
//
//  Created by 刘小二 on 2018/2/17.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa

class DockTilePlugin: NSObject , NSDockTilePlugIn {
    func setDockTile(_ dockTitle: NSDockTile?) {
        let customDockView = NSImageView(image: NSImage(named: .init(rawValue: "icon"))!)
        customDockView.imageScaling = .scaleAxesIndependently
        customDockView.imageFrameStyle = .groove
        dockTitle?.contentView = customDockView
        dockTitle?.showsApplicationBadge = false
        dockTitle?.badgeLabel = "haha"
        dockTitle?.display()
    }
}

