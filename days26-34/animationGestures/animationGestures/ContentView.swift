//
//  ContentView.swift
//  animationGestures
//
//  Created by Nick Gracilla on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        Text("Drag me")
            .fontWeight(.bold)
            .font(.title)
            .frame(width:200, height:100)
            .background(LinearGradient(gradient: Gradient(colors:[.blue, .teal]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .foregroundColor(.primary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged {dragAmount = $0.translation}
                    .onEnded {_ in
                        withAnimation {
                            dragAmount = .zero
                        }
                    }
            )
        
      
//        LinearGradient(gradient: Gradient(colors:[.blue, .teal]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width:200, height:100)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation}
//                    .onEnded { _ in
//                        withAnimation {
//                            dragAmount = .zero
//                        }
//                    }
//            )
            // .animation(.spring(), value: dragAmount)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
