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
    let sol = Sol()
    var joueur: Joueur?
    var scoreLabel = MonLabel()
    var scoreDuJoueur = 0
    
    
    override func didMove(to view: SKView) {
        physicsWorld.gravity.dy = -9
        
        camera = cameraNode
        addChild(cameraNode)
        cameraNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        
        sol.miseEnPlace(scene: self)
        addChild(sol)
        
        scoreLabel.miseEnPlace(x: -(UIScreen.main.bounds.width / 1.5), y: -(UIScreen.main.bounds.height / 1.5))
        cameraNode.addChild(scoreLabel)
        scoreLabel.ajoutTexte(String(scoreDuJoueur))
        
        ajouterJoueur()
        
    }
    
    func ajouterJoueur() {
        joueur = Joueur(circleOfRadius: 25)
        joueur?.miseEnPlace(scene: self)
        if joueur != nil {
            addChild(joueur!)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if joueur != nil {
            joueur?.sauter()
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
}
