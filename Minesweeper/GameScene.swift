//
//  GameScene.swift
//  Minesweeper
//
//  Created by Engineers on 4/9/19.
//  Copyright © 2019 Engineers. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var tiles : [[Tile?]] = [[Tile?]](repeating: [Tile?](repeating: nil, count: 16), count:21)
    
    override func didMove(to view: SKView) {
        for x in 0...15 {
            for y in 0...20 {
                tiles[y][x] = Tile(xPos: x*32, yPos: y*32, scene: self)
                self.addChild(tiles[y][x]!.sprite)
            }
        }
       
    }
    
    func tileAtPoint(xPos: Int, yPos: Int) -> Tile {
        let xInd = (xPos + 250) / 32
        let yInd = (yPos + 250) / 32
//        print("X: " + String(xInd))
        return tiles[yInd][xInd]!
       
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.green
//            self.addChild(n)
//        }
        print("touch!")
        tileAtPoint(xPos: Int(pos.x), yPos: Int(pos.y)).click()
    }
    
    func touchMoved(toPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.blue
//            self.addChild(n)
//        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.red
//            self.addChild(n)
//        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let label = self.label {
//            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
//        }

        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
