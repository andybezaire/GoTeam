//
//  Game.swift
//  GoTeam
//
//  Created by Andy Bezaire on 28/01/2018.
//  Copyright © 2018 DNNJN. All rights reserved.
//

import Foundation

struct Team {
    let name: String
    let mascot: String
}

struct Game {
    let teams: [Team]
    let score: [Int]
    
    func gameWith(newScore: [Int]) -> Game {
        return Game(teams: teams, score: newScore)
    }
    
    func gameWith(addToScore: [Int]) -> Game {
        let calculatedNewScore = zip(score, addToScore).map(+)
        
        return gameWith(newScore: calculatedNewScore)
    }
}

extension Team: Equatable {}
func ==(lhs: Team, rhs: Team) -> Bool {
    return lhs.name == rhs.name && lhs.mascot == rhs.mascot
}

extension Game: Equatable {}
func ==(lhs: Game, rhs: Game) -> Bool {
    return lhs.teams == rhs.teams && lhs.score == rhs.score
}
