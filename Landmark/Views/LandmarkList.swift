//
//  LandmarkList.swift
//  Landmark
//
//  Created by Ashika Shetty on 03/08/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarkNames: [Landmark] {
        landMarks.filter { landmark in
            return !showFavoritesOnly || landmark.isFavorite
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show favorites only")
                }
                ForEach(filteredLandmarkNames) {
                    landmark in
                    NavigationLink {
                        LandmarkDetail(landMark: landmark)
                    } label: {
                        LandMarkRowView(landMark: landmark)
                    }
                }
                    
                }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE(3rd generation)", "iPad mini (6th generation)"], id: \.self) { device in
            LandmarkList()
                .previewDevice(PreviewDevice(stringLiteral: device))
                .previewDisplayName(device)
        }
    }
}
