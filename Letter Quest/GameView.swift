//
//  GameView.swift
//  Letter Quest
//
//  Created by Tanishk Sahni on 10/07/24.
//

import SwiftUI

struct GameView: View {
    var level: Level
    var body: some View {
        SpriteKitContainer()
            .toolbar(.hidden)
            .ignoresSafeArea()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(level: .init(level: 1, badge: "✨", word: "Star", missingLetters: ["T"]))
    }
}
