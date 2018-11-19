//
//  Planet.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

struct Planet: PlanetProtocol, ColonyProtocol, Card {
    var advancementCostType: ColonizationCost
    var colonizationCost: Quantum
    var action: PlanetAction
    var resourceProduced: Resource
}

extension Planet {
    static let normal = Planet(advancementCostType: .science, colonizationCost: 3, action: .galaxy, resourceProduced: .energy)
}
