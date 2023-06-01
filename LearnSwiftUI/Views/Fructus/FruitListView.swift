//
//  FruitListView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct FruitListView: View {
    //MARK: - Property
    @State private var isShowingSettings: Bool = false
    var fruit: [Fruit] = fruitsData
    
    //MARK: - Function
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { fruit in
                    // Navigation..
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingView()
                    })
                )
        }
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
