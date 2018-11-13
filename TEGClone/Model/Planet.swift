//
//  Planet.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

struct Planet: PlanetProtocol, ColonyProtocol {
    var advancementCostType: ColonizationCost
    var colonizationCost: Quantum
    var action: PlanetAction
    var resourceProduced: Resource
}
