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
        
        // Set the background colour
self.backgroundColor = NSColor(calibratedHue: 230/360, saturation: 75/100, brightness: 25/100, alpha: 1)
    for x in 0...30 {
        let groundTop = SKSpriteNode(imageNamed: "2.png")
        groundTop.position = CGPoint(x: groundTop.size.width / 2 + CGFloat(x) * groundTop.size.width , y: groundTop.size.height / 2 + 50)
        groundTop.zPosition = 2
        self.addChild(groundTop)
        }
    for x in 0...30 {
        let groundBottom = SKSpriteNode(imageNamed: "5.png")
        groundBottom.position = CGPoint(x: groundBottom.size.width / 2 + CGFloat(x) * groundBottom.size.width , y: groundBottom.size.height / 2)
        groundBottom.zPosition = 2
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
        
//        let reindeer1 = SKSpriteNode(imageNamed: "Deer1.png")
//        reindeer1.position = CGPoint(x: self.size.width - 250, y: self.size.height - 85)
//        reindeer1.zPosition = 2
//        self.addChild(reindeer1)
            
            if let snow = SKEmitterNode(fileNamed: "Snow") {

                snow.position = CGPoint(x: self.size.width / 2, y: self.size.height)
                self.addChild(snow)
                
            }
        

        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)

        // Get a reference to the mp3 file in the app bundle
        let backgroundMusicFilePath = Bundle.main.path(forResource: "sleigh-bells-excerpt.mp3", ofType: nil)!
        
        // Convert the file path string to a URL (Uniform Resource Locator)
        let backgroundMusicFileURL = URL(fileURLWithPath: backgroundMusicFilePath)
        
        // Attempt to open and play the file at the given URL
        do {
            backgroundMusic = try AVAudioPlayer(contentsOf: backgroundMusicFileURL)
            backgroundMusic?.play()
        } catch {
            // Do nothing if the sound file could not be played
        }
    }
    
    // This runs before each frame is rendered
    // Avoid putting computationally intense code in this function to maintain high performance
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    
}
