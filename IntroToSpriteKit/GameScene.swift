//
//  GameScene.swift
//  IntroToSpriteKit
//
//  Created by Russell Gordon on 2019-12-07.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation

class GameScene: SKScene {
    
    // Background music player
    var backgroundMusic: AVAudioPlayer?
    
    // This function runs once to set up the scene
    override func didMove(to view: SKView) {
        
        let actiononeSecondWait = SKAction.wait(forDuration: 1.0)

        
        // Set the background colour
self.backgroundColor = NSColor(calibratedHue: 230/360, saturation: 75/100, brightness: 25/100, alpha: 1)
    for x in 0...30 {
        
        let groundTop = SKSpriteNode(imageNamed: "2.png")
        groundTop.position = CGPoint(x: groundTop.size.width / 2 + CGFloat(x) * groundTop.size.width , y: groundTop.size.height / 2 + 50)
        groundTop.zPosition = 2
        groundTop.physicsBody = SKPhysicsBody(texture: groundTop.texture!, alphaThreshold: 0.5, size: groundTop.size)
        groundTop.physicsBody?.isDynamic = false
        self.addChild(groundTop)
        
        }
    for x in 0...30 {
        
        let groundBottom = SKSpriteNode(imageNamed: "5.png")
        groundBottom.position = CGPoint(x: groundBottom.size.width / 2 + CGFloat(x) * groundBottom.size.width , y: groundBottom.size.height / 2)
        groundBottom.zPosition = 2
        groundBottom.physicsBody = SKPhysicsBody(texture: groundBottom.texture!, alphaThreshold: 0.5, size: groundBottom.size)
        groundBottom.physicsBody?.isDynamic = false
        self.addChild(groundBottom)
        }
    for x in 0...30 {
        
        let groundBottom2 = SKSpriteNode(imageNamed: "5.png")
        groundBottom2.position = CGPoint(x: groundBottom2.size.width / 2 + CGFloat(x) * groundBottom2.size.width , y: groundBottom2.size.height / 2 + 25)
        groundBottom2.zPosition = 2
        self.addChild(groundBottom2)
        }
        
        if let snow = SKEmitterNode(fileNamed: "Snow") {

            snow.position = CGPoint(x: self.size.width / 2, y: self.size.height)
            self.addChild(snow)
            
            
        }
        
        let Tree = SKSpriteNode(imageNamed: "Tree_1")
        Tree.position = CGPoint(x: self.size.width / 2 + 250, y: self.size.height / 2 - 85)
        Tree.zPosition = 2
        self.addChild(Tree)

        let Tree1 = SKSpriteNode(imageNamed: "Tree_1")
        Tree1.position = CGPoint(x: self.size.width / 2 - 250, y: self.size.height / 2 - 85)
        Tree1.zPosition = 2
        self.addChild(Tree1)
        
        let gift1 = SKSpriteNode(imageNamed: "present_09.png")
        gift1.position = CGPoint(x: self.size.width / 2 - 15, y: self.size.height / 2 - 210)
        gift1.zPosition = 2
        self.addChild(gift1)
        
        let gift2 = SKSpriteNode(imageNamed: "present_11.png")
        gift2.position = CGPoint(x: self.size.width / 2 + 15, y: self.size.height / 2 - 210)
        gift2.zPosition = 2
        self.addChild(gift2)
        
        let gift3 = SKSpriteNode(imageNamed: "present_13.png")
        gift3.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2 - 210)
        gift3.zPosition = 2
        self.addChild(gift3)
        
        let gift4 = SKSpriteNode(imageNamed: "present_01.png")
        gift4.position = CGPoint(x: self.size.width / 2 + 30, y: self.size.height / 2 - 210)
        gift4.zPosition = 2
        self.addChild(gift4)
        
        let gift8 = SKSpriteNode(imageNamed: "present_03.png")
        gift8.position = CGPoint(x: self.size.width / 2 + 45, y: self.size.height / 2 - 210)
        gift8.zPosition = 2
        self.addChild(gift8)
        
        let gift5 = SKSpriteNode(imageNamed: "present_05.png")
        gift5.position = CGPoint(x: self.size.width / 2 - 30, y: self.size.height / 2 - 210)
        gift5.zPosition = 2
        self.addChild(gift5)
        
        let gift6 = SKSpriteNode(imageNamed: "present_07.png")
        gift6.position = CGPoint(x: self.size.width / 2 - 45, y: self.size.height / 2 - 210)
        gift6.zPosition = 2
        self.addChild(gift6)
        
        let gift7 = SKSpriteNode(imageNamed: "present_15.png")
        gift7.position = CGPoint(x: self.size.width / 2 + 5, y: self.size.height / 2 - 195)
        gift7.zPosition = 2
        self.addChild(gift7)
        
        let gift9 = SKSpriteNode(imageNamed: "present_21.png")
        gift9.position = CGPoint(x: self.size.width / 2 - 10, y: self.size.height / 2 - 195)
        gift9.zPosition = 2
        self.addChild(gift9)
        
        let gift10 = SKSpriteNode(imageNamed: "present_17.png")
        gift10.position = CGPoint(x: self.size.width / 2 - 25, y: self.size.height / 2 - 195)
        gift10.zPosition = 2
        self.addChild(gift10)
        
        let gift11 = SKSpriteNode(imageNamed: "present_19.png")
        gift11.position = CGPoint(x: self.size.width / 2 + 20, y: self.size.height / 2 - 195)
        gift11.zPosition = 2
        self.addChild(gift11)
        
        let gift12 = SKSpriteNode(imageNamed: "present_23.png")
        gift12.position = CGPoint(x: self.size.width / 2 + 35, y: self.size.height / 2 - 195)
        gift12.zPosition = 2
        self.addChild(gift12)
        
        let gift13 = SKSpriteNode(imageNamed: "present_25.png")
        gift13.position = CGPoint(x: self.size.width / 2 - 40, y: self.size.height / 2 - 195)
        gift13.zPosition = 2
        self.addChild(gift13)
        
//        let d1R = SKSpriteNode(imageNamed: "Deer1R.png")
//        d1R.position = CGPoint(x: -50, y: 128 + self.size.height / 2)
//        d1R.zPosition = 4
//        self.addChild(d1R)
//
//        var RR: [SKTexture] = []
//
//        RR.append(SKTexture(imageNamed: "Deer1R"))
//        RR.append(SKTexture(imageNamed: "Deer2R"))
//        RR.append(SKTexture(imageNamed: "Deer3R"))
//
//        let d1L = SKSpriteNode(imageNamed: "Deer1L.png")
//        d1L.position = CGPoint(x: -250, y: 200 + self.size.height / 2)
//        d1L.zPosition = 4
//        self.addChild(d1R)
//
//        var RL: [SKTexture] = []
//
//        RL.append(SKTexture(imageNamed: "Deer1R"))
//        RL.append(SKTexture(imageNamed: "Deer2R"))
//        RL.append(SKTexture(imageNamed: "Deer3R"))
//
//        let RRanimation = SKAction.animate(with: RR, timePerFrame: 0.25, resize: true, restore: true)
//
//        // Create action of reindeer running to the left twice as fast
//        let RLanimation = SKAction.animate(with: RL, timePerFrame: 0.125, resize: true, restore: true)
    
        
        
        
        
        let AddH = SKAction.run {
            self.add(letter: "H", at: 50)
        }
        let AddA = SKAction.run {
            self.add(letter: "a", at: 125)
        }
        let AddP = SKAction.run {
            self.add(letter: "p", at: 175)
        }
        let AddP2 = SKAction.run {
            self.add(letter: "p", at: 250)
        }
        let AddY = SKAction.run {
            self.add(letter: "y", at: 325)
        }
    
        let AddX = SKAction.run {
            self.add(letter: "X", at: 500)
        }
        let AddM = SKAction.run {
            self.add(letter: "m", at: 575)
        }
        let AddA1 = SKAction.run {
            self.add(letter: "a", at: 650)
        }
        let AddS = SKAction.run {
            self.add(letter: "s", at: 725)
        }


        self.run(AddH)

        let WaitThenAddA = SKAction.sequence([actiononeSecondWait, AddA])
        self.run(WaitThenAddA)


        let WaitThenAddP = SKAction.sequence([actiononeSecondWait,actiononeSecondWait, AddP])
        self.run(WaitThenAddP)


        let WaitThenAddP2 = SKAction.sequence([actiononeSecondWait, actiononeSecondWait, actiononeSecondWait, AddP2])
        self.run(WaitThenAddP2)

        let WaitThenAddY = SKAction.sequence([actiononeSecondWait,actiononeSecondWait, actiononeSecondWait, actiononeSecondWait, AddY])
        self.run(WaitThenAddY)
        
        let WaitThenAddX = SKAction.sequence([actiononeSecondWait, actiononeSecondWait, actiononeSecondWait, actiononeSecondWait,actiononeSecondWait, AddX])
        self.run(WaitThenAddX)
        
        let WaitThenAddM = SKAction.sequence([actiononeSecondWait, actiononeSecondWait, actiononeSecondWait, actiononeSecondWait,actiononeSecondWait,actiononeSecondWait, AddM])
        self.run(WaitThenAddM)
        
        let WaitThenAddA1 = SKAction.sequence([actiononeSecondWait, actiononeSecondWait, actiononeSecondWait, actiononeSecondWait,actiononeSecondWait,actiononeSecondWait,actiononeSecondWait, AddA1])
        self.run(WaitThenAddA1)
        
        let WaitThenAddS = SKAction.sequence([actiononeSecondWait, actiononeSecondWait, actiononeSecondWait, actiononeSecondWait,actiononeSecondWait,actiononeSecondWait,actiononeSecondWait, actiononeSecondWait, AddS])
        self.run(WaitThenAddS)

    }

    // This runs before each frame is rendered
    // Avoid putting computationally intense code in this function to maintain high performance
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    func add(letter: String, at x: CGFloat) {
        let newLetter = SKLabelNode(fontNamed: "Brush script MT")
        newLetter.fontSize = 200
        newLetter.fontColor = .white
        newLetter.text = letter
        newLetter.name = "happy letters"
        newLetter.zPosition = 5
        newLetter.position = CGPoint(x: x, y: self.size.height + 100)
        newLetter.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 40, height: 90),
                                           center: CGPoint(x: 0, y: 35))
        newLetter.physicsBody?.restitution = 0
        self.addChild(newLetter)
    }
    
}
