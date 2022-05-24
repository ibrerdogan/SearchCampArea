//
//  CampingAreaManager.swift
//  SearchCampArea
//
//  Created by İbrahim Erdogan on 23.05.2022.
//

import Foundation
import MapKit

final class CampingAreaManager: NSObject, ObservableObject , CLLocationManagerDelegate
{
    @Published var locationManager: CLLocationManager?
    @Published var mapRect = MKMapRect()
    @Published var CampingArray = [CampingArea]()
    @Published var Region = MKCoordinateRegion(
                center: CLLocationCoordinate2D.init(latitude: 41.01202363622455, longitude: 29.1296761346959),
                span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
  
    override init() {
        super.init()
        checkLocationAuth()
        CampingArray.append(CampingArea(id: UUID(), name: "Alan 1", coordinate: CLLocationCoordinate2D.init(latitude: 41.09494180469894, longitude: 29.123589120583844)))
        CampingArray.append(CampingArea(id: UUID(), name: "Alan 2", coordinate: CLLocationCoordinate2D.init(latitude: 41.2118951, longitude: 29.1322289)))
        CampingArray.append(CampingArea(id: UUID(), name: "Alan 3", coordinate: CLLocationCoordinate2D.init(latitude: 41.3118951, longitude: 29.1322289)))
        CampingArray.append(CampingArea(id: UUID(), name: "Alan 4", coordinate: CLLocationCoordinate2D.init(latitude: 41.4118951, longitude: 29.1322289)))
   
    }
    
    func fit()
    {
        let points = CampingArray.map(\.coordinate).map(MKMapPoint.init)
               mapRect = points.reduce(MKMapRect.null) { rect, point in
                   let newRect = MKMapRect(origin: point, size: MKMapSize())
                   return rect.union(newRect)
               }
    }
    
    func checkManager()
    {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager?.desiredAccuracy = .leastNormalMagnitude
            locationManager?.delegate = self
            checkLocationAuth()
        }
    }
    
    func checkLocationAuth()
    {
        guard let locationManager = locationManager else {
            return
        }

        switch locationManager.authorizationStatus{
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            locationManager.requestWhenInUseAuthorization()
        case .denied:
            locationManager.requestWhenInUseAuthorization()
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkManager()
    }
    
}
