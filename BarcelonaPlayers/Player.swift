//
//  Player.swift
//  BarcelonaPlayers
//
//  Created by Ronald Hernandez on 10/22/16.
//  Copyright © 2016 Ronaldoh1. All rights reserved.
//

import UIKit

struct Player {
    
    var name = ""
    var age = 0
    var country = ""
    var height = ""
    var image = UIImage()
    
    static func createPlayers() -> [Player] {
        let player1  = Player(name: "Ter Stegen", age: 24, country:"Germany", height: "187 cm", image: UIImage(named: "stegen")!)
        let player2 = Player(name: "Leo Messi", age: 29, country: "Argentina", height: "170 cm", image: UIImage(named: "messi")!)
        let player3 = Player(name: "Luis Suárez", age: 29, country: "Uruguay", height: "182 cm", image: UIImage(named: "suarez")!)
        return [player1, player2, player3]
    }
}
