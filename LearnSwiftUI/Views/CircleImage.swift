//
//  SwiftUIView.swift
//  LearnSwiftUI
//
//  Created by Admin on 25/02/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image.clipShape(Circle()).overlay{
            Circle().stroke(.gray,lineWidth: 5.0)
        }.shadow(radius: 5.0)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
