//
//  GameState.swift
//  RPS
//
//  Created by Jibryll Brinkley on 5/24/24.
//



// colors: .start - blue
//.win = green
// .lose == red
// .draw = yellow

import Foundation
import UIKit

enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, or Scissors?"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lose!"
        case .draw:
            return "It's a Draw"
        }
    }
    
    var color: UIColor {
        switch self {
        case .start:
            return UIColor.blue
        case .win:
            return UIColor.green
        case .lose:
            return UIColor.red
        case .draw:
            return UIColor.yellow
        }
    }
}
