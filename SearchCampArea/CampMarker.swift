//
//  CampMarker.swift
//  SearchCampArea
//
//  Created by İbrahim Erdogan on 23.05.2022.
//

import SwiftUI

struct CampMarker: View {
    var body: some View {
        Image("tent").resizable()
            .frame(width: 30, height: 30)
            .padding()
            .background() {
                Circle()
                    .stroke(lineWidth: 5)
                    .fill(.red)
            }

    }
}

struct CampMarker_Previews: PreviewProvider {
    static var previews: some View {
        CampMarker()
    }
}
