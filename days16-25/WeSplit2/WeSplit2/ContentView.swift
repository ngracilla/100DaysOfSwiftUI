//
//  ContentView.swift
//  WeSplit2
//
//  Created by Nick Gracilla on 9/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @FocusState private var amountIsFocused: Bool
    @State private var checkTotal = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 30, 0]
    
    var totalPerPerson : Double {
        let peopleCount = Double(numberOfPeople + 2)
            let tipSelection = Double(tipPercentage)

            let tipValue = checkTotal / 100 * tipSelection
            let grandTotal = checkTotal + tipValue
            let amountPerPerson = grandTotal / peopleCount

            return amountPerPerson
        }
    
    var body: some View {

        NavigationView {
            Form {
                Section {
                    TextField("Bill total", value: $checkTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                
                } header: {
                    Text("Bill total")
                }
                Section {
                    Picker("Head count", selection: $numberOfPeople) {
                        ForEach(2..<12) {
                            Text("\($0) people")
                        }
                    }
                    
                } header: {
                    Text("How many diners?")
                }
                Section {
                    
                Picker("Tip percentage", selection: $tipPercentage) {
                    ForEach(tipPercentages, id: \.self) {
                        Text($0, format: .percent)
                    }
                }
                .pickerStyle(.segmented)
                } header: {
                    Text("Tip percentage")
                }

                
                
                Section {
                    
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                } header: {
                    Text("Total per person")
                }
            }
            .navigationTitle("Tip Calculator")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }

        
/*
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                }
            }
            .navigationTitle("NavigationView")
            .navigationBarTitleDisplayMode(.inline)
        }
 */
        
    }
}

#Preview {
    ContentView()
}
