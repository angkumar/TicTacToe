//
//  GameLogic.swift
//  TicTacToe
//
//  Created by Angad Kumar on 5/7/25.
//

import Foundation

enum player {
    case X
    case O
}

class TicTacModel: ObservableObject {
    
    @Published var board: [player?] = Array(repeating: nil, count: 9)
    @Published var activePlayer: player = .X
    
    func buttonTap(i:Int) {
        if board[i] == nil {
            board[i] = activePlayer
        }
        
        activePlayer = (activePlayer == .X) ? .O : .X
    }
    
    func buttonLabel(i:Int) -> String {
        if let player = board[i] {
            return player == .X ? "X" : "O"
        }
        return ""
    }
    
    func resetGame() {
        board = Array(repeating: nil, count: 9)
        activePlayer = .X
    }
}
