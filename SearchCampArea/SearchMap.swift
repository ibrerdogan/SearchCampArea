//
//  SearchMap.swift
//  SearchCampArea
//
//  Created by İbrahim Erdogan on 23.05.2022.
//

import SwiftUI
import MapKit
struct SearchMap: View {
    @ObservedObject var manager = CampingAreaManager()
    @State var showDetail = false
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $manager.Region,showsUserLocation: true,annotationItems: manager.CampingArray){ area in
                //MapPin(coordinate: area.coordinate, tint: .red) pin atar
                //MapMarker(coordinate: area.coordinate)
                MapAnnotation(coordinate: area.coordinate) {
                    CampMarker().onTapGesture {
                        print(area.name)
                        showDetail.toggle()
                    }
                }
            }.onAppear(){
                manager.fit()
                manager.checkManager()
            }
        }.fullScreenCover(isPresented: $showDetail) {
            CampAreaDetailView()
        }
        
            
    
    }
}

struct SearchMap_Previews: PreviewProvider {
    static var previews: some View {
        SearchMap()
    }
}


//MapAnnotation(
//                coordinate: area.coordinate,
//                anchorPoint: CGPoint(x: 0.5, y: 0.5)
//            ) {
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 44, height: 44)
//            }
//
