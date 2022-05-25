//
//  ProfileSummary.swift
//  LearnSwiftUI
//
//  Created by Admin on 01/03/22.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            VStack {
                                Text("Epic")
                                Image("turtlerock").resizable()
                                    .frame(width: 100, height: 100).cornerRadius(5.0)
                            }
                            VStack {
                                Text("Epic")
                                Image("turtlerock").resizable()
                                    .frame(width: 100, height: 100).cornerRadius(5.0)
                            }
                            VStack {
                                Text("Epic")
                                Image("turtlerock").resizable()
                                    .frame(width: 100, height: 100).cornerRadius(5.0)
                            }
                        }
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
