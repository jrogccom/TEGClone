//
//  Ship.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/12/18.
//

import Foundation

class Ship {
    enum Position {
        case orbit(Orbit)
        case landed(on: Planet)
        case home
    }
    var position = Position.home
}
