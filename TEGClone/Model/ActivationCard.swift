//
//  ActivationCard.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

struct ActivationCard {
    
    enum Error: Swift.Error {
        case illegalCombination
        case illegalActivation
        case combinationActionUsed
    }
    
    typealias DiceIndexCombination = (Int, Int)
    var combinedIndices: DiceIndexCombination?
    var diceTotal: Int
    var diceAvailable: Int { return diceTotal - consumedIndices.count }
    var consumedIndices = Set<Int>()
    var roll: [DiceOutcome]
    var activationSlots = [DiceOutcome]()
    var lastActivated: DiceOutcome? {
        return activationSlots.last
    }
    
    mutating func combine(indexes: DiceIndexCombination, yielding desiredOutcome: DiceOutcome) throws -> DiceOutcome {
        
        guard combinedIndices == nil else {
            throw Error.combinationActionUsed
        }
        
        let indexesSet = Set([indexes.0, indexes.1])
        guard indexesSet.intersection(consumedIndices).isEmpty else {
            throw Error.illegalCombination
        }
        
        for index in indexesSet {
            consumedIndices.insert(index)
        }
        
        return desiredOutcome
    }
    
    mutating func activateOutcome(at index: Int) throws {
        guard !consumedIndices.contains(index) else {
            throw Error.illegalActivation
        }
        consumedIndices.insert(index)
        let outcome = roll[index]
        activationSlots.append(outcome)
    }
}
