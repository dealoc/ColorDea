//
//  Carre.swift
//  ColorDea
//
//  Created by Dea-loC on 06/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import SpriteKit

class Carre: Obstacle {
    
    override func miseEnPlace() {
        super.miseEnPlace()
    }
    
    override func creerForme() -> UIBezierPath? {
        return UIBezierPath(roundedRect: CGRect(x: -200, y: -200, width: 400, height: 40), cornerRadius: 50)
    }
    
}
