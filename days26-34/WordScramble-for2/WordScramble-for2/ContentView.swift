//
//  ContentView.swift
//  WordScramble-for2
//
//  Created by Nick Gracilla on 7/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            
                List {
                    Section("Player 1") {}
                    
                    Section("What words can you spell from it?") {
                        Text("hi")
                    }
                    
                    HStack{
                        List {
                            HStack{
                            Text("left")
                            Text("left")
                            }
                        }
                        List {
                            Text("Right")
                            Text("right")
                        }
                    }
                    
                    
                }
                .navigationTitle("Title of game")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("New game", action: startGame)
                    }
                }
        } // NavigationView

    } // body
    
    func startGame() {
        // stuff here
    }
    
} // struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
