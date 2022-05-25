//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Admin on 25/02/22.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
