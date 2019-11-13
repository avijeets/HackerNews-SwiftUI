//
//  WebView.swift
//  HN-SwiftUI
//
//  Created by Avijeet Sachdev on 11/11/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
