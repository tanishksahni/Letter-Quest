//
//  LevelsView.swift
//  Letter Quest
//
//  Created by Tanishk Sahni on 10/07/24.
//
import SwiftUI

struct LevelsView: View {
    @State private var levels: [Level] = [
        Level(level: 1, badge: "🌳", word: "Forest", missingLetters: ["o", "e"]),
        Level(level: 2, badge: "🌊", word: "Ocean", missingLetters: ["c", "e"]),
        Level(level: 3, badge: "☀️", word: "Sunlight", missingLetters: ["u", "g"]),
        Level(level: 4, badge: "🌍", word: "Earth", missingLetters: ["a", "h"])
    ]
    
    
    var allLevelsCompleted: Bool {
        return levels.allSatisfy { $0.status == .played }
    }
    var body: some View {
        VStack {
            Text("Select a Level")
                .font(.largeTitle)
                .padding()
            
            
            VStack {
                ForEach(levels, id: \.level) { level in
                    NavigationLink(destination: GameView(level: level)) {
                        Text(level.badge)
                            .font(.title)
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .rainbowBorder() 
                    }
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(
                        LinearGradient(gradient: Gradient(colors: [
                            Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple
                        ]), startPoint: .leading, endPoint: .trailing),
                        lineWidth: allLevelsCompleted ? 5 : 0
                    )
                    .cornerRadius(10)
            )
            .frame(width: 250, height: 250)
        }
    }
}

struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
    }
}
