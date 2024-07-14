//
//  GameScene.swift
//  Letter Quest
//
//  Created by Tanishk Sahni on 10/07/24.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        // Add background image
        let background: SKSpriteNode = SKSpriteNode(imageNamed: "bg")
        print(background)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = -1
        background.size = self.size
        background.size = CGSize(width: frame.maxX, height: frame.maxY)
        
        self.addChild(background)
    }
}
