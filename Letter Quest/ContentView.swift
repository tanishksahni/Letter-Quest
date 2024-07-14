//
//  ContentView.swift
//  Letter Quest
//
//  Created by Tanishk Sahni on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Word Puzzle Game")
                    .font(.largeTitle)
                    .padding()
                NavigationLink(destination: LevelsView()) {
                    Text("Start Game")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
