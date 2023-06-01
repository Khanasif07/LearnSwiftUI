//
//  NutrientsView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct NutrientsView: View {
    //MARK: - Property
    var fruit: Fruit
    var nutrients: [String] = ["Energy","Sugar","Protien","Fat","Vitamins","Minerals"]
    
    
    //MARK: - Function
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }
    }
}

struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitsData[1])
    }
}
