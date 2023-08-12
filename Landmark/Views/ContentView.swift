//
//  ContentView.swift
//  Landmark
//
//  Created by Ashika Shetty on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE(3rd generation)", "iPad mini (6th generation)"], id: \.self) { device in
            ContentView()
                .previewDevice(PreviewDevice(stringLiteral: device))
                .previewDisplayName(device)
        }
    }
}
