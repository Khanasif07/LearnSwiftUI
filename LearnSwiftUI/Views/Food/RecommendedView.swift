//
//  RecommendedView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 29/05/2023.
//

import Foundation
import SwiftUI

struct RecommendedView: View {
    let dish: Dish

    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: dish.image)!,
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .cornerRadius(20)
                },
                placeholder: {
                    ProgressView()
                }
            ).frame(width: 60, height: 60)//.background(.red)

            VStack(alignment: .leading, spacing: 4) {
                Text("Breakfast")
                    .font(.caption)
                    .foregroundColor(.teal)

                Text(dish.name)
                    .fontWeight(.medium)

                HStack(spacing: 2) {
                    ForEach(0..<5) { _ in
                        Image(systemName: "star.fill")
                            .renderingMode(.template)
                            .foregroundColor(.pink)
                    }
                    Text("\(dish.calories) Calories")
                        .font(.caption)
                        .foregroundColor(.pink)
                        .padding(.leading)
                }.padding(.bottom, 4)

                HStack {
                    Image(systemName: "clock")
                    Text("10 mins")

                    Image(systemName: "bell")
                    Text("4 Serving")
                    // Spacer()
                }
                .font(.caption2)
                .foregroundColor(.gray)
            }//.background(.red)

            Spacer()

            VStack {
                Image(systemName: "heart")
                Spacer()
            }.frame(maxHeight: .infinity)

            // .multilineTextAlignment(.top)

        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(UIColor.systemBackground))        .cornerRadius(20)
    }
}

struct RecommendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedView(dish: Dish(id: "item30", name: "Jollof Rice", description: "Jollof rice is Nigeria\'s national dish. In order to prepare it, rice is cooked in a rich tomato sauce so that it soaks in all the flavors. The most common ingredients found in jollof rice include rice, tomatoes, tomato paste, onions, salt, and pepper.", image: "https://cdn.tasteatlas.com/images/dishes/41ca6dfc48714647a813a6c1333a9e94.jpg?mw=1300", calories: 1200))
    }
}
