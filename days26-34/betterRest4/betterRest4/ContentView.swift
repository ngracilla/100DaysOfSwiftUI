//
//  ContentView.swift
//  betterRest4
//
//  Created by Nick Gracilla on 7/19/22.
//

import CoreML
import SwiftUI

struct ContentView: View {
        
    @State private var desiredSleep = 8.0
    @State private var wakeTime = defaultWakeTime
    @State private var coffePerDay = 1
        
    var sleepResults: String {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeTime)
            
            let hour = (components.hour ?? 0)*60*60
            let minute = (components.minute ?? 0)*60
            
            let prediction = try
            model.prediction(wake: Double(hour+minute), estimatedSleep: desiredSleep, coffee: Double(coffePerDay))
            
            let sleepTime = wakeTime - prediction.actualSleep
            
            return "Get to bed by " + sleepTime.formatted(date:.omitted, time:.shortened)
            
        } catch {
            return "Sorry, there was an error"
        }
    }
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 15
        return Calendar.current.date(from:components) ?? Date.now
    }
    
    
    var body: some View {
        
        NavigationView{
            
            Form {
                
                Section("When do you wish to wake?") {
                    DatePicker("Enter a wake time", selection: $wakeTime, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
                
                Section("How much sleep do you want?"){
                    Stepper("\(desiredSleep.formatted()) hours", value: $desiredSleep, in: 3...14, step: 0.25)
                }
                
                Section("How much coffee do you drink?") {
                    Picker("Coffee per day", selection: $coffePerDay) {
                        ForEach(1..<15) {
                            Text(String($0)) }
                    }
                }

                Text(sleepResults)
                    .font(.body)
                
            } // Form

            .navigationTitle("GTF To Bed")
            
        } // navigation view
        
    } // body
    

    
    
} // struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
