//
//  ContentView.swift
//  gradientPlay
//
//  Created by Nick Gracilla on 7/16/22.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.pink, .red, .orange, .yellow,
        .green,
                           
        .mint,
  
        .teal,
.cyan,
                           .blue,
                           

        .purple,
                           .indigo,
                           
                           
                .black,
                           .brown,
                           .gray,

        .white ]
        
    let gradient1 = LinearGradient(gradient: Gradient(colors:[.green, .yellow]), startPoint: .topLeading, endPoint: .center)

    var gradient2 = { (_ color: Color) in
        LinearGradient(gradient: Gradient(colors:[color, .black]), startPoint: .leading, endPoint: .trailing)
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    
                        .fill(gradient2(color))
//                        .frame(width:50, height: 50)
                                

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
