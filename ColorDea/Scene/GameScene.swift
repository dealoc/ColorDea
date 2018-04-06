//
//  GameScene.swift
//  ColorDea
//
//  Created by Dea-loC on 06/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let cameraNode = SKCameraNode()
    
    override func didMove(to view: SKView) {
        physicsWorld.gravity.dy = -5
        
        camera = cameraNode
        addChild(cameraNode)
        cameraNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        
        let joueur = SKShapeNode(circleOfRadius: 25)
        joueur.fillColor = .blue
        joueur.strokeColor = .blue
        joueur.position = CGPoint(x: size.width / 2, y: size.height / 2)
        
        let physicsBody = SKPhysicsBody(circleOfRadius: 25)
        physicsBody.affectedByGravity = true
        physicsBody.mass = 1.5
        joueur.physicsBody = physicsBody
        
        addChild(joueur)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
}
