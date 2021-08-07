//
//  Landmark.swift
//  Landmark
//
//  Created by mai ng on 8/6/21.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description:String
    
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    
    private var coordinateS: Coordinate
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinateS.latitude, longitude: coordinateS.longitude)
    }
    
    struct Coordinate: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
