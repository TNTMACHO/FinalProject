//
//  DetailNewsController.swift
//  Most Popular News
//
//  Created by Manav Tandon on 05/06/22.
//   
//

import UIKit
import WebKit

class DetailViewController: UIViewController, WKUIDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createWebView()
        loadURL()
        
    }
    
    var input : String?
    
    @IBOutlet var webView: WKWebView!
    
    func createWebView(){
        webView.uiDelegate=self
        
    }
    
    func loadURL(){
        let url = URL(string: input ?? defaultURL)
        let request = URLRequest(url: url!)
        webView.load(request)
        
    }
}


