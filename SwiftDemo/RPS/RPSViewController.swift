//
//  RPSViewController.swift
//  SwiftDemo
//
//  Created by zhenzhaoyang on 2017/2/22.
//  Copyright © 2017年 zhenchy. All rights reserved.
//

import Foundation
import UIKit

class RPSViewController: UIViewController {
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var computerTuneLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(forGameState: .start)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(_ playerSign: Sign) {
        let opponentSign = randomSign()
        let gameState = playerSign.gameState(versusSign: opponentSign)
        update(forGameState: gameState)
        
        computerTuneLabel.text = opponentSign.textValue
        
        rockButton.isEnabled = false
        rockButton.isHidden = true
        
        paperButton.isEnabled = false
        paperButton.isHidden = true
        
        scissorButton.isEnabled = false
        scissorButton.isHidden = true
        
        switch playerSign {
        case .paper:
            paperButton.isHidden = false
        case .rock:
            rockButton.isHidden = false
        case .scissors:
            scissorButton.isHidden = false
        }
        
        playAgainButton.isHidden = false
    }
    
    func update(forGameState gameState: GameState) {
        
        statusLabel.text = gameState.status
        switch gameState {
        case .start:
            view.backgroundColor = Palette.darkGrey
            computerTuneLabel.text = "🤖"
            
            rockButton.isEnabled = true
            rockButton.isHidden = false
            
            paperButton.isEnabled = true
            paperButton.isHidden = false
            
            scissorButton.isEnabled = true
            scissorButton.isHidden = false
            
            playAgainButton.isHidden = true
            
        case .win:
            view.backgroundColor = Palette.green
        case .lose:
            view.backgroundColor = Palette.brick
        case .draw:
            view.backgroundColor = Palette.lightGrey
        }
    }
    
    @IBAction func playRock(_ sender: Any) {
        play(.rock)
    }
    
    @IBAction func playPaper(_ sender: Any) {
        play(.paper)
    }
    
    @IBAction func playScissor(_ sender: Any) {
        play(.scissors)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        update(forGameState: .start)
    }
}
