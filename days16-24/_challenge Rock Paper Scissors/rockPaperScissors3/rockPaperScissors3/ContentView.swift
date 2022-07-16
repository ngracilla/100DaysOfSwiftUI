//
//  ContentView.swift
//  rockPaperScissors3
//
//  Created by Nick Gracilla on 7/16/22.
//

import SwiftUI

struct ContentView: View {
    
    let faces = ["Rock", "Paper", "Scissors"]
    let winningFaces = ["Paper", "Scissors", "Rock"]
    
    @State private var computerPlays = Int.random(in: 0...2)
    @State private var shouldUserWin = Bool.random()
    
    @State private var score = 0
    @State private var roundOutcomeMessage = ""
    
    @State private var gameLength = 5
    @State private var gameTurn = 1
    @State private var isGameOver = false
    
    var body: some View {
        VStack(spacing:25) {
            
            Section { // header
                Spacer()
                Text("Rock, Paper, Scissors")
                    .font(.largeTitle)
                Spacer()
                
            }
            
            Section { // computer
                VStack(spacing:10) {
                    Text("Computer throws")
                    Text(faces[computerPlays])
                        .font(.largeTitle)
                }
            }
            
            Section { // user
                Text("Try to \(shouldUserWin ? "win" : "loose"):")
                    .font(.title3)
                
                HStack (spacing:25) {
                    ForEach (0..<3) { index in
                        Button {
                            gameRound(choice: index)
                        } label: {
                            Text(faces[index] )
                                .font(.headline)
                        }
                    }
                }
            }
            
            Section { // footer
                Spacer()
                
                Text(roundOutcomeMessage)
                Text("Score: \(score)")
                    .font(.body)
                Spacer()
            }
            
            
        } // VStack
        .alert("Game over!", isPresented: $isGameOver) {
            Button("Play Again", action: restart)
        }
        
        
    } // var body
    
    func gameRound (choice: Int) {
        let userWins: Bool
        
        if shouldUserWin {
            userWins = faces[choice] == winningFaces[computerPlays]
        } else {
            userWins = faces[computerPlays] == winningFaces[choice]
        }
        
        if userWins {
            roundOutcomeMessage = "You win!"
            score += 1
        } else {
            roundOutcomeMessage = "Ooops..."
            score -= 1
        }
        
        if gameTurn == gameLength {
            isGameOver = true
        } else {
            // re-roll
            computerPlays = Int.random(in: 0...2)
            shouldUserWin.toggle()
            gameTurn += 1
        }
        
    }
    
    func restart () {
        isGameOver = false
        score = 0
        gameTurn = 1
        computerPlays = Int.random(in: 0...2)
        shouldUserWin = Bool.random()
        roundOutcomeMessage = ""
    }
    
} // struct ContentView
                   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
