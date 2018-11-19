//
//  Turn.swift
//  TEGClone
//
//  Created by Javier Osorio on 11/18/18.
//

import Foundation

struct Turn {
    let player: Player
    unowned var game: Game
    
    var availableDice: Int
    
    init(player: Player, game: Game) {
        self.player = player
        self.game = game
        
        availableDice = player.card.diceCount
    }
}
