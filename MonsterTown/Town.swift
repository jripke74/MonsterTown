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
    static let region = "South"
    var population = 5_422 {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    
    var numberOfStoplights = 4
    enum Size {
        case small
        case medium
        case large
    }
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    func printDescription() {
        print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
