//
//  FruitHeaderView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: - Property
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - Function
    var body: some View {
        ZStack{
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red:0,green: 0,blue: 0, opacity:0.15), radius: 8,x:6,y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
        }// ZSTack..
        .frame(height: 440.0)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
    }
}
