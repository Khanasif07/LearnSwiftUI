//
//  LandmarkRow.swift
//  LearnSwiftUI
//
//  Created by Admin on 28/02/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                          .resizable()
                          .frame(width: 50, height: 50).cornerRadius(5.0)
            Text(landmark.name)
            
            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}
