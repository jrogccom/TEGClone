//
//  Dice.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

enum DiceOutcome: Int, CaseIterable {
    
    static func roll(_ amount: Int) -> [DiceOutcome] {
        return (0..<amount).map { _ in DiceOutcome() }
    }
    
    init() {
        let count = DiceOutcome.allCases.count
        let index = Int(arc4random_uniform(UInt32(count)))
        self = DiceOutcome.allCases[index]
    }
    
    case ship
    case culture
    case energy
    case planetAction
    case science
    case wealth
}
