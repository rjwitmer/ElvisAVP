//
//  ContentView.swift
//  ElvisAVP
//
//  Created by Bob Witmer on 2025-07-16.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var imageName = ""
    @State private var message = ""
    
    var body: some View {
        VStack {
            
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageName = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    imageName = "heart"
                    message = "Love"
                }
                Button("Understanding") {
                    imageName = "lightbulb.min"
                    message = "Understanding"
                }

            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
