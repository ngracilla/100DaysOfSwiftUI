//
//  ContentView.swift
//  animationExplicit
//
//  Created by Nick Gracilla on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Do not press") {
            withAnimation {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.mint)
        .foregroundColor(.primary)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0.25, y: 0, z: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
