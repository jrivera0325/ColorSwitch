//
//  MenuScene.swift
//  ColorSwitch
//
//  Created by Alex on 12/16/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        addLogo()
        addLabels()
    }
    
    func addLogo() {
        let logo = SKSpriteNode(imageNamed: "logo")
        logo.size = CGSize(width: frame.size.width/4, height: frame.size.width/4)
        logo.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
        addChild(logo)
    }
    
    func addLabels() {
        let playLabel = SKLabelNode(text: "Tap To Play!")
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 50.0
        playLabel.fontColor = UIColor.white
        playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(playLabel)
        
        let highestscoreLabel = SKLabelNode(text: "Highscore: "  + "\(UserDefaults.standard.integer(forKey: "HighScore"))" )
        highestscoreLabel.fontName = "AvenirNext-Bold"
        highestscoreLabel.fontSize = 40.0
        highestscoreLabel.fontColor = UIColor.white
        highestscoreLabel.position = CGPoint(x: frame.midX, y: frame.midY - highestscoreLabel.frame.size.height*4)
        addChild(highestscoreLabel)
    
        let recentScoreLabel = SKLabelNode(text: "Recent Score: " + "\(UserDefaults.standard.integer(forKey: "RecentScore"))")
        recentScoreLabel.fontName = "AvenirNext-Bold"
        recentScoreLabel.fontSize = 40.0
        recentScoreLabel.fontColor = UIColor.white
        recentScoreLabel.position = CGPoint(x: frame.midX, y: highestscoreLabel.position.y - recentScoreLabel.frame.size.height*2)
        addChild(recentScoreLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: view!.bounds.size)
        view!.presentScene(gameScene)
    }
    
    
}
