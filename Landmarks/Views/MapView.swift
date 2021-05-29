//
//  MapView.swift
//  Landmarks
//
//  Created by Blaine Andrada on 5/28/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var locationCoordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(locationCoordinate)
            }
    }
    
    private func setRegion(_ locationCoordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: locationCoordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(locationCoordinate: landmarks[0].locationCoordinate)
    }
}
