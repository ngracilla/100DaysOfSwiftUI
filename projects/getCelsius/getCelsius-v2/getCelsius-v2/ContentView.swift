//
//  ContentView.swift
//  getCelsius-v2
//
//  Created by Nick Gracilla on 9/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputValue: Double = 0.0
    @State var inputUnit: String = "Fahrenheit"
    @State var outputUnit: String = "Fahrenheit"
    
    let units = ["Fahrenheit", "Celsius", "Kelvin"]
    
    var baseValue: Double {
        switch inputUnit {
        case "Fahrenheit": return (inputValue - 32) / 1.8
        case "Celsius": return inputValue
        case "Kelvin": return inputValue - 273.15
        default: return inputValue
        }
    }
    
    var convertedValue: Double {
        switch outputUnit {
        case "Fahrenheit": return (baseValue * 9/5 + 32)
        case "Celsius": return baseValue
        case "Kelvin": return baseValue + 273.15
        default: return baseValue
        }
    }
    
    
    var body: some View {

        NavigationView {
            Form {
                Section {
                    TextField("temperture", value: $inputValue, format: .number)
                    Picker("Units", selection: $inputUnit) {
                        ForEach (units, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                header: {
                    Text("What shall we convert?")
                }
                Section {
                    Picker("Units", selection: $outputUnit) {
                        ForEach (units, id: \.self) {
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
            .navigationTitle("GetCelsius, and more")
            .navigationBarTitleDisplayMode(.inline)
        }

        
    }
}

#Preview {
    ContentView()
}
