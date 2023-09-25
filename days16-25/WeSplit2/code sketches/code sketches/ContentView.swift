//
//  ContentView.swift
//  code sketches
//
//  Created by Nick Gracilla on 9/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let cats = ["Siamese", "Red", "Wild"]
    @State private var selectedCat = "Siamese"
    
    var body: some View {
  
    // picker view
        NavigationView {
            Form {
                Picker("Select your cat", selection: $selectedCat) {
                    ForEach(cats, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("My First Picker")
        }
        
        
 /*
        
        /* create views in a loop */
        Form {
            ForEach(0..<31) {
                Text("Row \($0)")
            }
        }
  */
        
        /*
        // manage state
        VStack{
            Button("Tap Count:\(tapCount)") {
                tapCount += 1
            }
            Form {
                TextField("Enter your name", text: $name)
                if name.count != 0 {
                    Text("Hello, \(name)")
                }
            }
            
        }
         */
        
        
        
/*
        // Navigation bar with small title
        NavigationView {
            Form {
                Section {
                    Text("Hello, NavigationView!")
                }
            }
        .navigationTitle("Navigation View")
        .navigationBarTitleDisplayMode(.inline)
        }
 */
        
/*
        Form {
            Section {
                Text("Hello, world")
            }
            Section {
                Text("Hello, World2")
                Text("Hello, World3")
            }
        }
 */
        
        
        
/*         VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
 */
        
    } // body
} // struct

#Preview {
    ContentView()
}
