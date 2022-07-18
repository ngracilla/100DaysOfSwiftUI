//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Nick Gracilla on 7/2/22.
//

import SwiftUI


struct ButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.teal)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct KittyText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
        
    }
}

struct ContentView: View {
    let rabbits = Text("I'm a rabbit")
    
    var body: some View {
        VStack(spacing:20){
 
            ButtonText(text: "The wolf")
            ButtonText(text: "The saint")
            
            KittyText(text: "Meow kitty")
            Text("Hiss kitty")
            Text("Growl kitty")
            Text("Purr kitty")
            rabbits
                .padding()
                .background(.green)
        }
        .padding()
        .font(.title)
        
        
        
    } // body
} // struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
