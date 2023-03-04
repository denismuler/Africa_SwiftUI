//
//  LocationModel.swift
//  Africa_SwiftUI
//
//  Created by Georgie Muler on 04.03.2023.
//

import Foundation
import MapKit

struct NAtionalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longtitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
    }
}
