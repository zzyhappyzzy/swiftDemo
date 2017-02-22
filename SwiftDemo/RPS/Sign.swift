//
//  Sign.swift
//  SwiftDemo
//
//  Created by zhenzhaoyang on 2017/2/22.
//  Copyright © 2017年 zhenchy. All rights reserved.
//

import Foundation
import GameplayKit

/*
 runtime
 if #available(iOS 9, *) {
 // use UIStackView for example
 } else {
 // do something else
 }
 
 //compile
 @available(iOS 9, *)
 func useStackView() {
 // use UIStackView for example
 }
 */

@available(iOS 9.0, *)
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    var sign: Int
    if #available(iOS 9.0, *) {
        sign = randomChoice.nextInt()
    } else {
        // Fallback on earlier versions
        sign = Int(arc4random() % 3)
    }
    
    if sign == 0 {
        return .rock
    }else if sign == 1 {
        return .paper
    }else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var textValue: String {
        switch self {
        case .rock: return "👊"
        case .paper: return "✋"
        case .scissors: return "✌️"
        }
    }
    
    func gameState(versusSign: Sign) -> GameState {
        if self == versusSign {
            return .draw
        }
        switch self {
        case .rock:
            if versusSign == .scissors {
                return .win
            }
        case .paper:
            if versusSign == .rock {
                return .win
            }
        case .scissors:
            if versusSign == .paper {
                return .win
            }
        }
        return .lose
    }
}
