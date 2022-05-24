//
//  ContentView.swift
//  SearchCampArea
//
//  Created by İbrahim Erdogan on 23.05.2022.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var tabIndex = 0
    var body: some View {
        TabView(selection: $tabIndex) {
            CampMarker()
                .tabItem {
                    Image(systemName: "person.fill")
                }.tag(0)
            SearchMap()
                .tabItem {
                    Image(systemName: "network")
                }
                .tag(1)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
