//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/9/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp = true
    
    // use final to indicate to prevent overiding in subclasses of Zobie
    final override func terrorizeTown() {
        if (town?.population)! >= 10{
            town?.changePopulation(by: -10)
            super.terrorizeTown()
        } else {
            town?.population = 0
        }
    }
}
