//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Blaine Andrada on 5/29/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(locationCoordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 200)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.black)
                
                Divider()
                
                Text("About " + landmark.name)
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
