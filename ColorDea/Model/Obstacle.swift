//
//  Obstacle.swift
//  ColorDea
//
//  Created by Dea-loC on 06/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import SpriteKit

class Obstacle: SKNode {

    func miseEnPlace() {
        guard let path = creerForme() else { return }
    }
    
    func creerForme() -> UIBezierPath? {
        return nil
    }
    
}
