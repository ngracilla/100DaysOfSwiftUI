//
//  ContentView.swift
//  rockPaperScissors2
//
//  Created by Nick Gracilla on 7/15/22.
//

import SwiftUI

struct ContentView: View {
    
    let faces = ["Rock", "Paper", "Scissors"]
    let winningFaces = ["Paper", "Scissors", "Rock"]
    
    @State private var computerPlays = Int.random(in: 0...2)

    @State private var userShouldWin = Bool.random()
    @State private var gameLength = 3
    @State private var gameTurn = 1
    
    @State private var score = 0
    @State private var winMessage = ""
    
    @State private var isGameOver = false
    
    var body: some View {
        
        VStack(spacing:20) {
            Text("Computer plays")
                .font(.headline)
            Text(faces[computerPlays])
                .font(.largeTitle)

            Text("Try to \(userShouldWin ? "win" : "loose"):")
            
            HStack{
                ForEach(0..<3) { number in
                    Button {
                        playRound(choice: number)
                        
                    } label: {
                        Text(faces[number])
                            .font(.headline)
                    }
                }
            } // button HStack
            
            Text(winMessage)
            
            Text("Score: \(score)")
                .font(.subheadline)

            
        } // VStack
        .alert("Game Over", isPresented: $isGameOver) {
            Button("Play Again", action: resetGame)
        }
    } // body
    
    func playRound (choice: Int) {
        let userWins: Bool
    
        gameTurn += 1
        
        if userShouldWin {
            userWins = faces[choice] == winningFaces[computerPlays]
        } else {
            userWins = faces[computerPlays] == winningFaces[choice]
        }
        
    
        
        if userWins {
            winMessage = "Win"
            score += 1
        } else {
            winMessage = "Oops"
            score -= 1
        }
        
        if gameTurn > gameLength {
            isGameOver = true
        }
        
        computerPlays = Int.random(in: 0...2)
        userShouldWin = Bool.random()
        
    }
    
    func resetGame () {
        score = 0
        gameTurn = 1
        isGameOver = false
        computerPlays = Int.random(in: 0...2)
        userShouldWin = Bool.random()
    }
    
} // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
