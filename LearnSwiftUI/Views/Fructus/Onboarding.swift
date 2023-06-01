//
//  Onboarding.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct Onboarding: View {
    //MARK: - property
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack{
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0,green: 0,blue: 0, opacity:0.15), radius: 8,x:6,y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0,green: 0,blue: 0, opacity:0.15), radius: 2,x: 2,y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480.0)
                
                StartButtonView()
                
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(.linearGradient(Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
        
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding(fruit: fruitsData[2])
            .previewLayout(.fixed(width:320, height:640))
    }
}