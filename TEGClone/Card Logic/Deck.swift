//
//  Deck.swift
//  TEGClone
//
//  Created by Javier Osorio on 11/18/18.
//

import Foundation

private func shuffle<T: RangeReplaceableCollection>(_ deck: inout T) {
}
struct Deck<T: Card> {
    
    enum Error: Swift.Error {
        case outOfCards
    }
    private var cards: [T]
    private var top = 0
    mutating func draw(_ amount: Int) throws -> [T] {
        guard amount < cards.count - top else {
            throw Error.outOfCards
        }
        
        defer { top += amount }
        
        return Array(cards[top..<(top + amount)])
    }
    init(cards: [T]) {
        var cards = cards
        shuffle(&cards)
        self.cards = cards
    }
}
