//
//  ViewController.swift
//  AP06 WebView
//
//  Created by 刘小二 on 2018/2/14.
//  Copyright © 2018年 刘小二. All rights reserved.
//

import Cocoa
import WebKit
class ViewController: NSViewController {
    
    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: view.bounds, configuration: WKWebViewConfiguration())
       let navigation = webView.load(URLRequest(url: URL(string: "https://m.bilibili.com/index.html")!))
        print(navigation!)
    }
    override func viewDidAppear() {
        super.viewDidAppear()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
    }
}
