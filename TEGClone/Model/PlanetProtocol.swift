//
//  PlanetProtocl.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/11/18.
//

import Foundation

typealias PlanetAction = Any

protocol PlanetProtocol {
    var action: PlanetAction { get }
    var resourceProduced: Resource { get }
}
