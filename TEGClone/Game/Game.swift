//
//  Game.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

private let normalCards = [Planet](repeating: .normal, count: 50)

class Game {
    
    fileprivate var planetDeck: Deck<Planet>
    fileprivate(set) var planets: [Planet]
    let players: [Player]
    
    init(players amount: Int) {
        
        assert(amount <= 5, "Only 5 players supported at the moment.")
        
        players = [Player](repeating: Player(), count: amount)
        planetDeck = Deck(cards: normalCards)
        planets = try! planetDeck.draw(min(amount + 2, 6))
    }
}
