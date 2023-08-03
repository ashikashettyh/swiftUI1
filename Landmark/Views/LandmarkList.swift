//
//  LandmarkList.swift
//  Landmark
//
//  Created by Ashika Shetty on 03/08/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landMarks) { landmark in
            LandMarkRowView(landMark: landmark)
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
