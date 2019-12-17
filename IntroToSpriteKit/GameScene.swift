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
        let actionOneSecondWait = SKAction.wait(forDuration: 1)
        let actionSixSecondWait = SKAction.wait(forDuration: 6)

        // Set sequence to wait then remove all nodes and show end credits
        let actionShowEndCredits = SKAction.run(removeEverythingThenShowEndCredits)
        let actionWaitThenShowEndCredits = SKAction.sequence([actionSixSecondWait, actionOneSecondWait, actionOneSecondWait, actionOneSecondWait, actionOneSecondWait, actionOneSecondWait, actionShowEndCredits])
        self.run(actionWaitThenShowEndCredits)

        
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
        
        let deer1 = SKSpriteNode(imageNamed: "Deer1R")
        deer1.position = CGPoint(x: 0, y: 0)
        self.addChild(deer1)
        
        var walkingTexture: [SKTexture] = []
        
        walkingTexture.append(SKTexture(imageNamed: "Deer1R"))
        walkingTexture.append(SKTexture(imageNamed: "Deer2R"))
        walkingTexture.append(SKTexture(imageNamed: "Deer3R"))

        let actionWalkingAnimation = SKAction.animate(with: walkingTexture, timePerFrame: 0.05, resize: true, restore: true)
        
        let actionMoveForward = SKAction.moveBy(x: 10, y: 0, duration: 0.1)
        let actionMoveUp = SKAction.moveBy(x: 0, y: 7.5, duration: 0.1)
        let actionBothWay = SKAction.group([actionMoveForward, actionMoveUp])
        let actionWalkAndMove = SKAction.group([actionWalkingAnimation, actionBothWay])
        let actionWalkAndMoveFiveTimes = SKAction.repeat(actionWalkAndMove, count: 100)
        deer1.run(actionWalkAndMoveFiveTimes)

        let deer2 = SKSpriteNode(imageNamed: "Deer1R")
        deer2.position = CGPoint(x: 0, y: 50)
        self.addChild(deer2)
        deer2.run(actionWalkAndMoveFiveTimes)
        
        let deer14 = SKSpriteNode(imageNamed: "Deer1R")
        deer14.position = CGPoint(x: -50, y: 70)
        self.addChild(deer14)
        deer14.run(actionWalkAndMoveFiveTimes)
        
        let deer15 = SKSpriteNode(imageNamed: "Deer1R")
        deer15.position = CGPoint(x: -50, y: 120)
        self.addChild(deer15)
        deer15.run(actionWalkAndMoveFiveTimes)
        
        let deer16 = SKSpriteNode(imageNamed: "Deer1R")
        deer16.position = CGPoint(x: -100, y: 40)
        self.addChild(deer16)
        deer16.run(actionWalkAndMoveFiveTimes)
        
        let deer17 = SKSpriteNode(imageNamed: "Deer1R")
        deer17.position = CGPoint(x: -100, y: -10)
        self.addChild(deer17)
        deer17.run(actionWalkAndMoveFiveTimes)
        
        let deer18 = SKSpriteNode(imageNamed: "Deer1R")
        deer18.position = CGPoint(x: -100, y: -60)
        self.addChild(deer18)
        deer18.run(actionWalkAndMoveFiveTimes)
        
        let deer19 = SKSpriteNode(imageNamed: "Deer1R")
        deer19.position = CGPoint(x: -150, y: -50)
        self.addChild(deer19)
        deer19.run(actionWalkAndMoveFiveTimes)
        
        let deer20 = SKSpriteNode(imageNamed: "Deer1R")
        deer20.position = CGPoint(x: -150, y: 0)
        self.addChild(deer20)
        deer20.run(actionWalkAndMoveFiveTimes)
        
        let deer11 = SKSpriteNode(imageNamed: "Deer1R")
        deer11.position = CGPoint(x: 50, y: -50)
        self.addChild(deer11)
        deer11.run(actionWalkAndMoveFiveTimes)
        
        let deer12 = SKSpriteNode(imageNamed: "Deer1R")
        deer12.position = CGPoint(x: -150, y: -50)
        self.addChild(deer12)
        deer12.run(actionWalkAndMoveFiveTimes)
        
        let deer13 = SKSpriteNode(imageNamed: "Deer1R")
        deer13.position = CGPoint(x: -100, y: 90)
        self.addChild(deer13)
        deer13.run(actionWalkAndMoveFiveTimes)
        
        let deer10 = SKSpriteNode(imageNamed: "Deer1R")
        deer10.position = CGPoint(x: 50, y: 25)
        self.addChild(deer10)
        deer10.run(actionWalkAndMoveFiveTimes)
        
        let deer9 = SKSpriteNode(imageNamed: "Deer1R")
        deer9.position = CGPoint(x: 50, y: 75)
        self.addChild(deer9)
        deer9.run(actionWalkAndMoveFiveTimes)
        
        let deer3 = SKSpriteNode(imageNamed: "Deer1R")
        deer3.position = CGPoint(x: 0, y: 100)
        self.addChild(deer3)
        deer3.run(actionWalkAndMoveFiveTimes)

        let deer4 = SKSpriteNode(imageNamed: "Deer1R")
        deer4.position = CGPoint(x: -50, y: 20)
        self.addChild(deer4)
        deer4.run(actionWalkAndMoveFiveTimes)

        let deer5 = SKSpriteNode(imageNamed: "Deer1R")
        deer5.position = CGPoint(x: 0, y: -50)
        self.addChild(deer5)
        deer5.run(actionWalkAndMoveFiveTimes)
        
        let deer6 = SKSpriteNode(imageNamed: "Deer1R")
        deer6.position = CGPoint(x: 0, y: -100)
        self.addChild(deer6)
        deer6.run(actionWalkAndMoveFiveTimes)
        
        let deer7 = SKSpriteNode(imageNamed: "Deer1R")
        deer7.position = CGPoint(x: -50, y: -30)
        self.addChild(deer7)
        deer7.run(actionWalkAndMoveFiveTimes)
        
        let deer8 = SKSpriteNode(imageNamed: "Deer1R")
        deer8.position = CGPoint(x: -50, y: -80)
        self.addChild(deer8)
        deer8.run(actionWalkAndMoveFiveTimes)
        
        let deer21 = SKSpriteNode(imageNamed: "Deer1R")
        deer21.position = CGPoint(x: -100, y: -100)
        self.addChild(deer21)
        deer21.run(actionWalkAndMoveFiveTimes)
        
        let deer22 = SKSpriteNode(imageNamed: "Deer1R")
        deer22.position = CGPoint(x: -150, y: 50)
        self.addChild(deer22)
        deer22.run(actionWalkAndMoveFiveTimes)
        
        
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
    // Remove everything and show end credits
    func removeEverythingThenShowEndCredits() {

        // Remove all existing children nodes
        self.removeAllChildren()

        // Change background to black
        self.backgroundColor = .black

        // Add end credits
        
        // By...
        let by = SKLabelNode(fontNamed: "Helvetica Neue")
        by.fontSize = 48
        by.fontColor = .white
        by.text = "Brought to you by Nick Anstoetz"
        by.zPosition = 3
        by.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2 + 50)
        self.addChild(by)

        // And...
        let and = SKLabelNode(fontNamed: "Helvetica Neue")
        and.fontSize = 36
        and.fontColor = .white
        and.text = "and the Grade 12 Computer Science class"
        and.zPosition = 3
        and.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2 - 50)
        self.addChild(and)

    }

    // Make gravity cause items to fall from the left (gravity pulls to right side of screen)
    func gravityPullToRight() {
        let pullToRight = CGVector(dx: 9.8, dy: 0)
        self.physicsWorld.gravity = pullToRight
    }
    
    // Make the letters in the word "Happy" not be affected by gravity
    func makeHappyNotAffectedByGravity() {
        
        // Loop through all child nodes of the scene
        for node in self.children {
            
            // Only look at nodes of type SKLabelNode
            if let thisNode = node as? SKLabelNode {
                // Only the letters from the word happy
                if thisNode.name == "happy letters" {
                    // Make the physics body not be affected by gravity any more
                    thisNode.physicsBody?.affectedByGravity = false
                }
            }
        }
    }
}
