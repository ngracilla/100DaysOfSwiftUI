//
//  ContentView.swift
//  Animations
//
//  Created by Nick Gracilla on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        
        Button("Tap me") {
            animationAmount += 0.5
        }
        .padding(50)
        .background(.cyan)
        .foregroundColor(.white)
        .clipShape(Circle())


// animation 1: implicit animation
        
//      .scaleEffect(animationAmount)
//      .blur(radius: (animationAmount - 1) * 3)
//      .animation(.default, value: animationAmount)

// animation 2: spring
//       .scaleEffect(animationAmount)
//       .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
        
// animation 3: easing
        .scaleEffect(animationAmount)
        .animation(.easeInOut(duration: 1)
            .repeatCount(3, autoreverses: true), value: animationAmount)

        
// animation 4: repeating
        .overlay(
            Circle()
                .stroke(.blue)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount)
                .onAppear {
                    animationAmount = 2
                }
        )


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
