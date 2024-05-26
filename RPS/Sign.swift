//
//  Sign.swift
//  RPS
//
//  Created by Jibryll Brinkley on 5/24/24.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "✊"
        case .paper:
            return "🖐️"
        case .scissors:
            return "✌️"
        }
    }
    
    func gameState (against opponentSign: Sign) -> GameState {
        if self == opponentSign {
            return .draw
        }
        
        switch self {
        case .rock:
            if opponentSign == .scissors {
                return .win
            }
        case .paper:
            if opponentSign == .rock {
                return .win
            }
        case .scissors:
            if opponentSign == .paper {
                return .win
            }
        }
        return .lose
    }
}



//rock > scissors
//scissors > paper
//paper > rock
// rock == rock
