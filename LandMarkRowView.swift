//
//  LandMarkRowView.swift
//  Landmark
//
//  Created by Ashika Shetty on 02/08/23.
//

import SwiftUI

struct LandMarkRowView: View {
    var landMark: Landmark
    var body: some View {
        
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                
            Text(landMark.name)
            Spacer()
            if landMark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandMarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            LandMarkRowView(landMark: landMarks[0])
            LandMarkRowView(landMark: landMarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
