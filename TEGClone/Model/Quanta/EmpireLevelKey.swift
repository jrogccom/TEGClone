//
//  EmpireLevelLegend.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

typealias ShipDiceTuple = (shipCount: Int, diceCount: Int, victoryPoints: Int)
typealias EmpireLevelKey = [ShipDiceTuple]
enum EmpireLevel {
    
}
extension EmpireLevel {
    static let regular: EmpireLevelKey = [
        (2, 4, 0),
        (2, 5, 1),
        (3, 5, 2),
        (3, 6, 3),
        (4, 6, 5),
        (4, 7, 8)
    ]
    
}
