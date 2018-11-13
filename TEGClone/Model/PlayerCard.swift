//
//  PlayerCard.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

struct PlayerCard {
    let galaxy: Galaxy
    var ships: [Ship]
    var planets: [Planet]
    
    var resources = Dictionary(uniqueKeysWithValues: Resource.allCases.map{($0, 0)})
    
    var empire: Int
    var shipCount: Int
    var diceCount: Int
    
    mutating func add(_ amount: Quantum, resource: Resource) {
        resources[resource]? += amount
    }
    
    func getAmount(of resource: Resource) -> Int {
        return resources[resource] ?? 0
    }
}
