//
//  Place.swift
//  TravelWishListApp
//
//  Created by AJMac on 4/9/19.
//  Copyright © 2019 AJMac. All rights reserved.
//

import Foundation
import MapKit
import CoreLocation

class Place: NSObject, CLLocationManagerDelegate {
    
    var name: String?
    var hasVisited: Bool?
    var coordinate: CLLocationCoordinate2D
    var locString: String?
    
    init(name: String, hasVisited: Bool, coordinate: CLLocationCoordinate2D, locString: String){
        self.name = name
        self.hasVisited = hasVisited
        self.coordinate = coordinate
        self.locString = locString
        
    }
        
    var markerTintColor: UIColor {
        switch hasVisited {
        case true?:
            return .lightGray
        case false?:
            return .red
        case .none:
            return .clear
        }
    }
}
