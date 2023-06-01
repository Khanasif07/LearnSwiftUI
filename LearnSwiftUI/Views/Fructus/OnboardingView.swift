//
//  OnboardingView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Property
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Function
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                Onboarding(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,50)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
