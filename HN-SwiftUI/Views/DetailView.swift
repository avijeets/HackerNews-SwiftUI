//
//  DetailView.swift
//  HN-SwiftUI
//
//  Created by Avijeet Sachdev on 11/11/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
