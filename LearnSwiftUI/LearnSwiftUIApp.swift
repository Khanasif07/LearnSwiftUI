//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Admin on 25/02/22.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                ContentView().environmentObject(modelData)
            }
        }
    }
}
