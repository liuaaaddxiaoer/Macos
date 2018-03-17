1. NSCollectionView
2. NSTableView
3. StoryBoard
4. NSArrayController NSDocument （数据双向绑定）
	 `https://www.jianshu.com/p/430392ec0f11`
5. NSStatusBar 
	`Application is agent (UIElement) 设置后就没有Dock图标只有状态栏的图标了 另外statusItem需要强引用`
6. NSMenu 和 NSPopver
7. `NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler)` 可以点击控件外的区域关闭控件******
8. NSWindowController 管理了 NSWindow
9. NSTabViewController 切换
10. NSAlert
11. NSToolBar 的使用 可以自定义 隐藏window的标题 并且fullsize 
12. NSTextField 设置背景颜色默认是关闭的 
	`label.backgroundColor = NSColor.red
        label.drawsBackground = true
	` 可以开启
	`isSelectable`控制文本是否可以被选中 类似H5 webkit-select 那个属性
13. NSDatePicker 日期选择
14. NSSlider 系统滑块和事件滑块
15. NSPopUpButton 这个是h5中的 select opition
16. AppIcon 有 16 32(Dock) 128（关于） 256 512的代码也可以设置
17. NSToolBar 邮件可以自定义 item的样式
18. NSWindowController 可以开启新的window
`        let windo2 = Window2VC(windowNibName: .init("Window2"))
        windo2.showWindow(self)
`


19.NSDocument 

20.binding data  v-model
21. webview 无法请求数据
22. mouse event 需要重写方法 


23 .键盘事件需要重写 acceptFirstResponder

24 NSPopover 有detachwindow的操作

25 需要学下swift中只**指针**的使用__

26 `NSApp.windows[0].makeKeyAndOrderFront(nil) NSApp.terminate(nil)`

27 运行只打开menubar info.plist agent..

28 NSAlert 以前是 nspanel.h中定义的全局函数

29 iOS 中nsbundle 可以loadnib加载xib文件但是 其实xib文件可以任意指定他的额owner 只要调用了 `Bundle.main.loadNibNamed(.init("Sheet"), owner: self, topLevelObjects: nil)` 那么久会创建对象的xib对象的只不过iOS可以返回一个数组 mac中有数组指针

30 自定义sheet window.beginsheet 以前是nsapp.beginsheet

31 NSAlert init方法可以传入NSError 用来提示错误发生

32 mac 上屏保的制作 ScreenSaver

33 NSUSerDefaults 注册defaults 

34 NSLevelIndicator 可以显示星星

35 NSTextfield 如何垂直居中 如何去掉外边的蓝色框 如何 点击其他地方失去第一响应者 ？？？？

36 设置最小约束宽度但是开始的时候不是从最小开始的 可以将split的另外一个vc默认拖宽点

37 mac 上分享 NSSharingServicePicker

38 image well 可以 设置editable 的时候拖拽设置图片

39 nstableview 排序 sortDescriptors

40 nssearchfield 网易云音乐首页的搜索应该是这个控件

41.predicate format 可以用来过滤tableview NSArrayController可以设置 谓词来过滤数据 这个还不会呢

42.NSTableView 和 NSTextView等一些view 是在NSScrollview的subview中的 利用属性 `documentView` 可以快速获取信息

43 NSSpitView 有代理方法设置内容的最小宽度等

44 macos 的事件响应链 FirstResponder -> View hviewdrarchy -> window -> windowC -> vc -> (document) -> nsapp -> appde -> docementVC

45 Dockmenu `optional public func applicationDockMenu(_ sender: NSApplication) -> NSMenu?` 也可以在main.xib那里application那里进行设置

46 打印: `        let printOpetion = NSPrintOperation(view: self)
        printOpetion.runModal(for: self.window!, delegate: nil, didRun: nil, contextInfo: nil)
` 有个问题是无法拦截系统的print 响应链

47 按钮取消高亮 (backForwardBtn.cell as! NSButtonCell).highlightsBy = .init(rawValue: 0)

48 mac上dock图标的设置和badge的设置 
> http://blog.csdn.net/lovechris00/article/details/79312835

49