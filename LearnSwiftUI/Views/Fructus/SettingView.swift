//
//  SettingView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var  presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false ){
                VStack(spacing: 20) {
                    
                    //Section 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center,spacing: 10.0) {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruit naturally fat in sodium and calories. Most fruit naturally fat in sodium and calories.,Most fruit naturally fat in sodium and calories.")
                                .font(.footnote)
                        }
                    }
                    
                    //Section 2
                    
                    
                    
                    //Section 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        Divider().padding(.vertical,4)
                        
                        SettingRow(name: "Developer",content: "Jhon")
                        SettingRow(name: "Designer",content: "Robert")
                        SettingRow(name: "Website",linkLabel: "SwiftUI Master Class",linkDestination: "swiftuimasterclass.com")
                        SettingRow(name: "SwiftUI",content: "2.0")
                        SettingRow(name: "Version",content: "1.1.0")
                    }
                    
                    
                }
                
            }.navigationBarTitle("Settings",displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                    )
                .padding()
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
