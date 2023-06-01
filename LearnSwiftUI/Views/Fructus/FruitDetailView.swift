//
//  FruitDetailView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Property
    var fruit: Fruit
    
    //MARK: - Function
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center,spacing: 20) {
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading,spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[0])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        
                        NutrientsView(fruit: fruit)
                                       
                        // Sub Headline
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[0])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LInk
                        
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }//
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(false)
            }// Scroll..
            .edgesIgnoringSafeArea(.top)
            
        }// Navigation..
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
            .previewDevice("iPhone 11 Pro")
    }
}
