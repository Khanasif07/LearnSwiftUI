//
//  CategoryItem.swift
//  LearnSwiftUI
//
//  Created by Admin on 01/03/22.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            landmark.image.renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name).foregroundColor(.primary)
                .font(.subheadline)
            Spacer()
        }
        .padding([.leading,.bottom], 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
