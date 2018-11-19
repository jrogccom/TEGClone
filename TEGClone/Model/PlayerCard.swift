//
//  PlayerCard.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

struct PlayerCard {
    let galaxy = Galaxy()
    var planets = [Planet]()
    
    var resources = Dictionary(uniqueKeysWithValues: Resource.allCases.map{($0, 2)})
    
    var empireLevel = 0
    let empireKey = EmpireLevel.regular
    var shipCount: Int { return empireKey[empireLevel].shipCount }
    var diceCount: Int { return empireKey[empireLevel].diceCount }
    var empireVictoryPoints: Int { return empireKey[empireLevel].victoryPoints }
    
    mutating func add(_ amount: Quantum, resource: Resource) {
        resources[resource]? += amount
    }
    
    func getAmount(of resource: Resource) -> Int {
        return resources[resource] ?? 0
    }
}
