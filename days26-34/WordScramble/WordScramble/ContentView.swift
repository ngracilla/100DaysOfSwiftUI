//
//  ContentView.swift
//  WordScramble
//
//  Created by Nick Gracilla on 7/20/22.
//

import SwiftUI

struct ContentView: View {

    @State private var usedWords = [String]()
    @State private var rootWord = "random"
    @State private var newWord = ""
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    @State private var score = 0
    
    
    var body: some View {
        
        NavigationView {
            List {
                
                Section("What words can you spell from it?") {
                    TextField("Enter your word", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                Section("Word list") {
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            .toolbar {
                ToolbarItemGroup(placement:.navigationBarTrailing ) {
                    Button("New game", action: startGame)
                }
            }
            .safeAreaInset(edge: .bottom) {
                Text("Score: \(score)")
                    .font(.title3)
                    .frame(maxWidth:.infinity)
                    .padding()
                    .background(.gray)
                    .foregroundColor(.white)
            }
            
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $showingError) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(errorMessage)
            }
        }
    } // body
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 0 else
        { return }
        
        guard isOriginal(word: answer) else {
            wordError(title: "Word already used", message: "Try something different.")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "That doesn't work", message: "You can't spell that from \(rootWord)")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Is that a word?", message: "Your word isn't recognized.")
            return
        }
       
        guard isTooShort(word: answer) else {
            wordError(title: "Too short", message: "Words must be three characters or more.")
            return
        }
        
        guard isSame(word: answer) else {
            wordError(title: "Must be different", message: "Submit a different word")
            return
        }
        
        withAnimation {
        usedWords.insert(answer, at: 0)
        }
        newWord = ""
        score += answer.count
    }
    
    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "foobarto"
                
                newWord = ""
                usedWords.removeAll()
                score = 0
                return
            }
        }
        fatalError("Couldn't load the text file from bundle, sorry.")
    }
    
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    func isSame(word: String) -> Bool {
        !(word == rootWord)
    }
    
    func isTooShort(word: String) -> Bool {
        !(word.count < 3)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
