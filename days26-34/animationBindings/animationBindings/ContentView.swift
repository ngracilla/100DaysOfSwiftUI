//
//  ContentView.swift
//  animationBindings
//
//  Created by Nick Gracilla on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        
         VStack{
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration:0.5)
                .repeatCount(3, autoreverses: true)), in: 1...10)
            Spacer()
            Button("Tap me") {
                animationAmount += 1
                
            }
            .padding(50)
            .background(.teal)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
