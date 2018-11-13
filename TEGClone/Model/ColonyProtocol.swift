//
//  ColonyProtocol.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/11/18.
//

import Foundation

protocol ColonyProtocol {
    var advancementCostType: ColonizationCost { get }
    var colonizationCost: Int { get }
}
