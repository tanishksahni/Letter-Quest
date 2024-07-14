//
//  Level.swift
//  Letter Quest
//
//  Created by Tanishk Sahni on 10/07/24.
//

import Foundation

enum Status {
    case played
    case pending
}

struct Level {
    let level: Int
    var status: Status = .pending
    let badge: String
    let word: String
    let missingLetters: [String]
}
