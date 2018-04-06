//
//  Cercle.swift
//  ColorDea
//
//  Created by Dea-loC on 06/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import SpriteKit

class Cercle: Obstacle {
    
    override func miseEnPlace() {
        super.miseEnPlace()
    }
    
    override func creerForme() -> UIBezierPath? {
        let path = UIBezierPath()
        let angle1 = CGFloat(Double.pi / 2) * 3
        path.move(to: CGPoint(x: 0, y: -200))
        path.addLine(to: CGPoint(x: 0, y: -160))
        path.addArc(withCenter: CGPoint.zero, radius: 160, startAngle: angle1, endAngle: 0, clockwise: true)
        path.addLine(to: CGPoint(x: 200, y: 0))
        path.addArc(withCenter: CGPoint.zero, radius: 200, startAngle: 0, endAngle: angle1, clockwise: true)
        
        return path
    }
    
    
}
