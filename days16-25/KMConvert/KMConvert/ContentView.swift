//
//  ContentView.swift
//  KMConvert
//
//  Created by Nick Gracilla on 6/21/22.
//

import SwiftUI

struct ContentView: View {
    @State private var kmMinutes: Int = 6
    
    func kmToMI(_ minsPerKm: Int) -> Double {
        let KMtoMIConversion = 1.609344
        return Double(minsPerKm) * KMtoMIConversion
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("KM Minutes", value: $kmMinutes, format: .number)
                }
                header: {
                    Text("Pace in KM")
                }
                Section {
                    Text("\(kmToMI(kmMinutes), specifier: "%.2f") min/mi")
                    Text("\(kmMinutes*5) min/5k")
                    Text("\(kmToMI(kmMinutes)*5, specifier: "%.2f") min/5 mi")
                    Text("\(kmMinutes*10) min/10k")
                }
            header: {
                Text("Pace conversion")
            }
                
                
            }
            .navigationTitle("KM Converter")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
