//
//  CampingAreaModel.swift
//  SearchCampArea
//
//  Created by İbrahim Erdogan on 23.05.2022.
//

import Foundation
import CoreLocation

struct CampingArea : Identifiable
{
    var id = UUID()
    var name : String = ""
    var coordinate : CLLocationCoordinate2D
}
