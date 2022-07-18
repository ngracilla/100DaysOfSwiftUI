//
//  ContentView.swift
//  passwordChecker
//
//  Created by Nick Gracilla on 6/22/22.
//
//  password length > 8
//  password includes at least one cap letter
//  password includes at least one integer
//  password includes at least one special character

import SwiftUI

struct ContentView: View {
    
    @State private var password: String = ""
    let requiredCharacters = CharacterSet(["!", "@", "#", "$", "%", "&", "*"])
    let requiredIntegers = CharacterSet(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"])
    
    var passwordValidation: String {
        var message = "Password is valid"
        if password.count < 8 {
            message = "Password must be 8 characters or more."
        } else if password.rangeOfCharacter(from: requiredCharacters) == nil {
            message = "Password must contain a special character"
        } else if password.rangeOfCharacter(from: requiredIntegers) == nil {
            message = "Password must contain a number"
        } else if password == password.lowercased() {
            message = "Password must contain one upper case letter"
        }
        return message
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("password", text: $password)
                }
            header: {
                Text("Enter your password:")
            }
                
                Section {
                    Text("password is: \(password)")
                    

                }
                Section {
                    Text(passwordValidation)
                }

            }
            .navigationTitle("Password checker")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
