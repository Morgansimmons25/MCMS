//
//  Creature.swift
//  MCMS
//
//  Created by Student on 7/30/20.
//  Copyright © 2020 Morgan. All rights reserved.
//

import Foundation

class Creature {
    var name: String!
    var fullDescription: String!{
        return"\(name) \(weapon)"
    }

    var weapon: String!
    init(name: String, weapon: String) {
        self.name = name
        self.weapon = weapon
        self.fullDescription
    }

}
