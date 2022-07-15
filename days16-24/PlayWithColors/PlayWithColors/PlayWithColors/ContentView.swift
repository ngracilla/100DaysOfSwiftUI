//
//  ContentView.swift
//  PlayWithColors
//
//  Created by Nick Gracilla on 7/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let mintText = Text("Mint")
        let indigoText = Text("Indigo")
        
        VStack {
            
            HStack{
                mintText
                    .padding()
                    .background(.mint)
                indigoText
                    .background(.indigo)
                Text("sup")
                    .frame(maxWidth: 100, maxHeight: 100)
                    .background(.orange)
            }

            HStack{
                Text("blue")
                    .frame(width:125, height:125)
                    .background(.blue)

                Text("cyan")
                    .frame(width:125, height:125)
                    .background(.cyan)

                Text("teal")
                    .frame(width:125, height:125)
                    .background(.teal)

            }
            .font(.title)

        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
