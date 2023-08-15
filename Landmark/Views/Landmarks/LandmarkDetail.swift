//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Ashika Shetty on 05/08/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmarkIndex: Int {
        modelData.landMarks.firstIndex(where: {$0.id == landMark.id
        })!
    }
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
                HStack {
                    Text(landMark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landMarks[landmarkIndex].isFavorite)
                }
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
    static var landmarks = ModelData().landMarks
    static var previews: some View {
        LandmarkDetail(landMark: landmarks[6])
            .environmentObject(ModelData())
    }
}
