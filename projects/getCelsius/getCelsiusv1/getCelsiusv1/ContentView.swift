//
//  ContentView.swift
//  getCelsiusv1
//
//  Created by Nick Gracilla on 9/24/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tempInF = 72
    
    var tempInC : Double {
        return ((Double(tempInF + 10) - 32)/1.8)
    }
    
    var body: some View {
        
        NavigationView {
            Form {

                Picker("Temp in F", selection: $tempInF) {
                    ForEach(10..<116) {
                        Text("\($0) °F")
                    }
                }

                Section {
                    Text("\(String(format: "%.1f", tempInC)) °C")
                } header: {
                    Text("Temperature in Celsius")
                }
            }
            .navigationTitle("getCelsius")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    
    }
}

#Preview {
    ContentView()
}
