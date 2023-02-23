//
//  VideoModel.swift
//  Africa_SwiftUI
//
//  Created by Georgie Muler on 23.02.2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
