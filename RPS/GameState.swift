//
//  GameState.swift
//  RPS
//
//  Created by Jibryll Brinkley on 5/24/24.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var message: String {
        switch self {
        case .start:
            return "Rock, Paper, or Scissors?"
        case .win:
            return "You Win!"
        case .lose:
            return "You Lose :("
        case .draw:
            return "Draw"
        }
    }
}
