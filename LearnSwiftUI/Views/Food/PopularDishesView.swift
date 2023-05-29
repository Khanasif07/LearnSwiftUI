//
//  PopularDishesView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 29/05/2023.
//

import Foundation
import SwiftUI

struct PopularDishesView: View {
    let dish: Dish

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {

            HStack(alignment: .top) {
                Image(systemName: "heart")

                Spacer()

                AsyncImage(
                    url: URL(string: dish.image)!,
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                            .cornerRadius(20)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
            }

            Spacer()

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
            }

            Text("\(dish.calories) Calories")
                .font(.caption)
                .foregroundColor(.pink)

            HStack {
                Image(systemName: "clock")
                Text("10 mins")

                Image(systemName: "bell")
                Text("4 Serving")
            }
            .font(.caption2)
            .foregroundColor(.gray)
        }
        .padding()
        .frame(width: 180)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(20.0)
    }
}


struct PopularDishesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDishesView(dish: Dish(id: "item30", name: "Jollof Rice", description: "Jollof rice is Nigeria\'s national dish. In order to prepare it, rice is cooked in a rich tomato sauce so that it soaks in all the flavors. The most common ingredients found in jollof rice include rice, tomatoes, tomato paste, onions, salt, and pepper.", image: "https://cdn.tasteatlas.com/images/dishes/41ca6dfc48714647a813a6c1333a9e94.jpg?mw=1300", calories: 1200))
    }
}
