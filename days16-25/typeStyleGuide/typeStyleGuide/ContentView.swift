//
//  ContentView.swift
//  typeStyleGuide
//
//  Created by Nick Gracilla on 7/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:20) {
            
            // titles
            Group {

                Text("Hello, .largeTitle")
                    .font(.largeTitle)

                Text("This is an example of .title")
                    .font(.title)
                
                Text("This is an example of .title2")
                    .font(.title2)

                Text("This is an example of .title3")
                    .font(.title3)

            }

            
        
            Text("This is an example of .headline")
                .font(.headline)

            Text("This is an example of .subheadline")
                .font(.subheadline)

            Text("This is an example of .body")
                .font(.body)

            Text("This is an example of .callout")
                .font(.callout)

            
            // support text
            Group {

                Text("This is an example of .caption")
                    .font(.caption)

                Text("This is an example of .caption2")
                    .font(.caption2)

                Text("This is an example of .footnote")
                    .font(.footnote)

            }




        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
