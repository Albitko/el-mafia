//
//  GameModel.swift
//  Mafia
//
//  Created by Alex on 27.09.2021.
//

import Foundation

struct User{
    
    var name: String
    var isReady = false
    var isAlive = true
    var role: Role
}

enum Role: String, CodingKey {
    case mafia
    case location
    case sheriff
    case doctor
}
