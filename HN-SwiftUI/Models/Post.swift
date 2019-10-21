//
//  Post.swift
//  HN-SwiftUI
//
//  Created by Avijeet Sachdev on 10/20/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Hits]
}

struct Hits: Decodable, Identifiable {
    // need variable of id to use `Identifiable`, which is needed for SwiftUI List order
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
