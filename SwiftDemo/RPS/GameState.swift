//
//  GameState.swift
//  SwiftDemo
//
//  Created by zhenzhaoyang on 2017/2/22.
//  Copyright © 2017年 zhenchy. All rights reserved.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You won!"
        case .lose:
            return "You Lost!"
        case .draw:
            return "It's a Draw"
        }
    }
}
