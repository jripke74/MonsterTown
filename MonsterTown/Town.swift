//
//  Town.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/5/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

struct Town {
    // properties
    var population = 5_422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
