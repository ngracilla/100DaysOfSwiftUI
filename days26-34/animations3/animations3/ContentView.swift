//
//  ContentView.swift
//  animations3
//
//  Created by Nick Gracilla on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Don't touch") {
            enabled.toggle()
        }
        .frame(width:200, height: 200)
        .background(enabled ? .teal : .indigo)
        .animation(.default, value: enabled)
        .foregroundColor(.primary)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60: 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1.0))

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
