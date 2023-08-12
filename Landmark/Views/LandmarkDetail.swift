//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Ashika Shetty on 05/08/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landMark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landMark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImage(image: landMark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landMark.name)
                    .font(.title)
                HStack {
                    Text(landMark.park)
                    Spacer()
                    Text(landMark.state)
                }
                .font(.subheadline)
                .foregroundColor(Color.secondary)
                
                
                Divider()
                Text("About " + landMark.name)
                    .font(.title2)
                Text(landMark.description)
                
            }
            .padding()
        }
        .navigationTitle(landMark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landMark: landMarks[6])
    }
}
