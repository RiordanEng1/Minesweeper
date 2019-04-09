//
//  Tile.swift
//  Minesweeper
//
//  Created by Engineers on 4/9/19.
//  Copyright © 2019 Engineers. All rights reserved.
//

import Foundation
import SpriteKit

class Tile {
    var isBomb : Bool
    let sprite = SKSpriteNode(imageNamed: "Tile")
    
    init(xPos: Int, yPos: Int, scene: SKScene) {
        sprite.position = CGPoint(x: xPos - 250, y: yPos - 250)
        sprite.size = CGSize(width: 32, height: 32)
        isBomb = false
    }
    
    func click() {
        if isBomb {
            
        } else {
            sprite.color = UIColor.blue
            sprite.size = CGSize(width: 0, height: 0)
        }
    }
}
