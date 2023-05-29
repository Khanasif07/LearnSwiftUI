//
//  Form.swift
//  LearnSwiftUI
//
//  Created by Admin on 14/11/22.
//

import SwiftUI

struct FormView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @FocusState private var amountIsFocused: Bool
    @State private var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var configuration: String {
        return Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Enter name here", text: $name)
                        .focused($amountIsFocused)
                    Text("My name is \(configuration)").focused($amountIsFocused)
                }
                
                Section {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }.pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad).focused($amountIsFocused)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section{
                    Button("Tap Count: \(tapCount)"){
                        tapCount += 1
                    }
                }
                
                Section{
                    ForEach(1..<10){ number in
                        Text("Row \(number)")
                        
                    }
                }
                
                Section {
                    Group {
                        Text("Hello, world! Hello, world Hello, world Hello, world Hello, world")
                        Text("Hello, world!")
                        Text("Hello, world!")
                        Text("Hello, world!")
                    }
                    Group {
                        Text("Hello, world!")
                        Text("Hello, world!")
                        Text("Hello, world!")
                    }
                }
                
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }.navigationTitle("Nav-section-form")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
