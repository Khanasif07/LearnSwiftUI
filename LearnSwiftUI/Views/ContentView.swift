//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Admin on 25/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome().tabItem {
                Label("Featured", systemImage: "star")
            }
                .tag(Tab.featured)
            
            LandmarkList().tabItem {
                Label("List", systemImage: "list.bullet")
            }

                .tag(Tab.list)
            
            HomeView().tabItem {
                Label("Home", systemImage: "pencil.circle.fill")
            }
                .tag(Tab.home)
            
            PinchView().tabItem {
                Label("PINCH", systemImage: "pencil.circle.fill")
            }
                .tag(Tab.pinch)
            
            FruitListView().tabItem{
                Label("Fruits", systemImage: "list.bullet")
            }
            .tag(Tab.pinch)
        }
    }
    
    enum Tab {
           case featured
           case list
           case home
           case pinch
           case fruits
       }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
