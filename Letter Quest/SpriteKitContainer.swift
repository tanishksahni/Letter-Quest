//
//  SpriteKitContainer.swift
//  Letter Quest
//
//  Created by Tanishk Sahni on 10/07/24.
//

import SwiftUI
import SpriteKit

struct SpriteKitContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> SKView {
        let view = SKView()
        let scene = GameScene()
        view.presentScene(scene)
        return view
    }

    func updateUIView(_ uiView: SKView, context: Context) {}
}
