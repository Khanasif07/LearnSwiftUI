//
//  Profile.swift
//  LearnSwiftUI
//
//  Created by Admin on 01/03/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_kumar")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}

enum Strings {
    static let foodCategory = "Food Category"
    static let somethingWentWrong = "Something went wrong!"
    static let noInternet = "Internet not available, please check internet connection"
    static let noCharactersFound = "No character found!"
    static let fetchingRecords = "Fetching records"
    static let fetchingMoreRecords = "Fetching more records"
    static let requestTimeout = "Request timeout, please retry"
}



enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case unknown
}

enum ViewState {
    case loading
    case error(message: String)
    case dataLoaded
}
