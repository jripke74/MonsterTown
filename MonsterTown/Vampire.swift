//
//  Vampire.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/9/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    var vampire = [Vampire]()
    
    override func terrorizeTown() {
        super.terrorizeTown()
        vampire.append(Vampire())
    }
}
