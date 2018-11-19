//
//  PlanetProtocl.swift
//  TEGClone
//
//  Created by Javier Osorio Goenaga on 11/11/18.
//

import Foundation

struct PlanetAction {
    let description: String
    
    private init(description: String) {
        self.description = description
    }
    
    static let galaxy = PlanetAction(description: "Upgrade your empire; spend only energy or culture.")
}

protocol PlanetProtocol {
    var action: PlanetAction { get }
    var resourceProduced: Resource { get }
}
