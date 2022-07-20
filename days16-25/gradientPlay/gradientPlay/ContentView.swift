//
//  ContentView.swift
//  gradientPlay
//
//  Created by Nick Gracilla on 7/16/22.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [
        .white,
        .black,
        .init(uiColor: .systemPink),
        .init(uiColor: .systemRed),
        .init(uiColor: .systemOrange),
        .init(uiColor: .systemYellow),
        .init(uiColor: .systemGreen),
        .init(uiColor: .systemMint),
        .init(uiColor: .systemTeal),
        .init(uiColor: .systemCyan),
        .init(uiColor: .systemBlue),
        .init(uiColor: .systemIndigo),
        .init(uiColor: .systemPurple),
        .init(uiColor: .systemPink),
        .init(uiColor: .systemBrown),
        .init(uiColor: .systemGray),
        .init(uiColor: .systemGray2),
        .init(uiColor: .systemGray3),
        .init(uiColor: .systemGray4),
        .init(uiColor: .systemGray5),
        .init(uiColor: .systemGray6)
    ]
        
    var gradient = { (_ color: Color) in
        LinearGradient(gradient: Gradient(colors:[color, .white]), startPoint: .leading, endPoint: .topTrailing)
    }
    
    var body: some View {
        VStack(spacing:0) {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    
                        .fill(gradient(color))
                                
            }
        } // Vstack
        .ignoresSafeArea()
        
    } // var body
} //struct ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
