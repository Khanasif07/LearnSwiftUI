//
//  HomeView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 29/05/2023.
//

import Foundation
import SwiftUI
struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {

                    VStack(spacing: 5) {
                        Text("Hello Asif")
                            .font(.title)
                            .foregroundColor(.pink)

                        Text("Want to eat healthy food?")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.secondary)
                    }.padding(.bottom)

                    if let allDishes = viewModel.allDishes {

                        // Start Food Category

                        VStack(alignment: .leading) {

                            SectionTitleView(title: "Food Category")

                            if let dishes = allDishes.categories {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(dishes) { dish in
                                            CategoryView(dish: dish)
                                        }
                                    }
                                }.frame(height: 128)
                            }
                        }.padding(.bottom)

                        // End Food Category


                        // Start Popular

                        VStack(alignment: .leading) {

                            SectionTitleView(title: "Popular Dishes")

                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(allDishes.populars) { dish in
                                        PopularDishesView(dish: dish)
                                    }
                                }
                            }.frame(height: 250)
                        }.padding(.bottom, 8)

                        // End Popular

                        // Start Recommended

                        SectionTitleView(title: "Recommended")
                        LazyVStack {
                            ForEach(allDishes.specials) { dish in
                                RecommendedView(dish: dish)
                            }
                        }

                        // End Recommended
                    }
                }.padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(UIColor.secondarySystemBackground))
        }
        .onAppear {
            viewModel.fetchAllDishes()
        }
        .navigationTitle("Yummie")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
