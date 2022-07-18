//
//  ContentView.swift
//  betterRest
//
//  Created by Nick Gracilla on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    
    var body: some View {
        VStack{
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount,
                    in: 2...14, step: 0.25)
            
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
                .labelsHidden()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
