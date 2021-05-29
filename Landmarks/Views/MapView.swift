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
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(locationCoordinate: landmarks[0].locationCoordinate)
    }
}
