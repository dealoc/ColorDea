//
//  Extension Collision.swift
//  ColorDea
//
//  Created by Dea-loC on 06/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import SpriteKit

extension GameScene: SKPhysicsContactDelegate {
    
    func didBegin(_ contact: SKPhysicsContact) {
        if let node1 = contact.bodyA.node as? SKShapeNode {
            if let node2 = contact.bodyB.node as? SKShapeNode {
                if node1.fillColor != node2.fillColor {
                    // Game OVER
                    gameOver()
                }
               
            }
        }
    }
    
}
