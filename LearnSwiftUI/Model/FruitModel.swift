//
//  FruitModel.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
