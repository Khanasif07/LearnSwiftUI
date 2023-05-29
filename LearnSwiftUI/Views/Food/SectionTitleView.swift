//
//  SectionTitleView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 29/05/2023.
//

import Foundation
import SwiftUI

struct SectionTitleView: View {
    let title: String

    var body: some View {
        HStack {
           
            Text(title)
                .font(.title2)
                .fontWeight(.bold)

            Spacer()

            Text("See All")
                .foregroundColor(.pink)
           
        }.padding([.leading,.trailing],10.0)
    }
}

struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView(title: Strings.foodCategory)
    }
}
