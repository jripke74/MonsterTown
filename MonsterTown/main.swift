//
//  main.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/5/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)
let genericMonster = Monster()
let fredTheZombie = Zombie()
let theVampire = Vampire()

// we will use a instance method instead
//print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")

//myTown.printDescription()
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")
//myTown.printDescription()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

theVampire.town = myTown
theVampire.terrorizeTown()
theVampire.town?.printDescription()
theVampire.terrorizeTown()
print(theVampire.vampire.count)

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
