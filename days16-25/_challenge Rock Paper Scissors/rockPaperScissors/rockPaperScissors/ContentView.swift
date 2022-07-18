//
//  ContentView.swift
//  rockPaperScissors
//
//  Created by Nick Gracilla on 7/15/22.
//

import SwiftUI

// create RPS and randomly display them
// create win or loose game state and display
// create buttons labeled with items
// that indicate the user's selection
// that shows a message
// that repeats up to a total game count


struct ContentView: View {

    let items = ["Rock", "Paper", "Scissors"]
    let winningHand = ["Paper", "Scissors", "Rock"]
    
    @State private var computerChoice = Int.random(in: 0...2)
    @State private var userChoice = 0

    @State private var userShouldWin = Bool.random()
    @State private var gameLength = 3
    @State private var gameTurn = 0
        
    @State private var showOutcome = false
    @State private var outcomeTitle = ""
    @State private var score = 0
    
    private var showGameOver: Bool {gameTurn > gameLength}

    var body: some View {
        VStack(spacing: 30) {

            Text("Computer chooses")
                .font(.headline)
            Text((items[computerChoice]))
                .font(.system(size:50))
            
            Text("Try to \(userShouldWin ? "win" : "loose")")
                        
            HStack{
                ForEach(0..<3) { number in
                    Button {
                        playTurn(choice:number)
                    } label: {
                        Text(items[number])
                            .font(.title)
                    }
                }
            } // button HStack
            
            Text("Score: \(score)")
                .font(.subheadline)
                    
        } // HStack
        .alert(outcomeTitle, isPresented: $showOutcome) {
            Button("Continue", action: computerThrows)
        } message: {
            Text("Your score is \(score)")
        }
        


    } // body

    func computerThrows() {
        computerChoice = Int.random(in: 0...2)
    }
    
    func playTurn (choice: Int) {
        let didUserWin: Bool
        
        gameTurn += 1
        userChoice = choice
        
        if userShouldWin {
            didUserWin = items[userChoice] == winningHand[computerChoice]
        } else {
            didUserWin = items[computerChoice] == winningHand[userChoice]
            
        }


        
        
        outcomeTitle = "\(didUserWin):\(gameTurn)/\(gameLength): \(items[computerChoice]) v \(items[userChoice]); win: \(winningHand[computerChoice])"
        
        if items[userChoice] == winningHand[computerChoice] {
            outcomeTitle += "— You Win!"
            score += 1
        } else if items[userChoice] == items[computerChoice] {
            outcomeTitle += "— Tie, try again"
        } else {
            outcomeTitle += "—I won!"
            score -= 1
        }
        
        showOutcome = true
    }



} // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
