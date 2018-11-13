//
//  Ship.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

class Ship {
    enum Position {
        case orbit(around: Planet, level: Int)
        case landed(on: Planet)
        case home
    }
    var position = Position.home
    var planet: Planet? {
        switch position {
        case .orbit(let planet, _), .landed(let planet):
            return planet
        default:
            return nil
        }
    }
    var orbitLevel: Int {
        switch position {
        case .orbit(_, let level): return level
        default: return -1
        }
    }
}
