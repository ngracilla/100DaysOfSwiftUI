//
//  ContentView.swift
//  convertLengths
//
//  Created by Nick Gracilla on 6/23/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputValue = 0.0
    @State var inputUnit: String = "meters"
    @State var outputUnit: String = "meters"
    
    let units = ["meters", "kilometers", "feet", "miles"]
    
    var baseValue: Double {
        // convert everything to meters
        switch inputUnit {
        case "kilometers": return inputValue * 1000
        case "feet": return inputValue / 3.2808
        case "miles": return inputValue / 0.00062137
        default: return inputValue
        }
    }
    
    var convertedValue: Double {
        switch outputUnit {
        case "kilometers": return baseValue / 1000
        case "feet": return baseValue * 3.2808
        case "miles": return baseValue * 0.00062137
        default: return baseValue
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    
                    TextField("length", value: $inputValue, format: .number)
    
                    Picker("Units", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)

                }
            header: {
                Text("What would you like to convert?")
            }
                
                Section {

                    Picker("Units", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)

                    Text(convertedValue.formatted())

                }
            header: {
                Text("Convert to what?")
            }

            }
            .navigationTitle("Length converter")




        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
