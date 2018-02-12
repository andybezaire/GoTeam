//
//  ModelTests.swift
//  GoTeamTests
//
//  Created by Andy Bezaire on 12/02/2018.
//  Copyright © 2018 DNNJN. All rights reserved.
//

import XCTest

class ModelTests: XCTestCase {
    
    static let Team1 = Team(name: "Tampere", mascot: "Saints")
    static let Team2 = Team(name: "Turku", mascot: "Trojans")
    
    let testGame1 = Game(teams: [Team1, Team2], score: [14, 10])
    
    func printOut(team: Team) {
        print("Team: \(team.name) \(team.mascot)")
    }
    
    func printOut(game: Game) {
        printOut(team: game.teams[0])
        printOut(team: game.teams[1])
        print("Score: \(game.score[0]) - \(game.score[1])")
    }
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testThatScoreGetsReplaced() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let newScoreGame = testGame1.gameWith(newScore: [0, 0])
        
        printOut(game: testGame1)
        printOut(game: newScoreGame)
        
        XCTAssertEqual(testGame1.teams, newScoreGame.teams)
        XCTAssertEqual(newScoreGame.score, [0, 0])
    }
    
    func testThatScoreGetsAdded() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let addedScoreGame = testGame1.gameWith(addToScore: [0,7])
        
        printOut(game: testGame1)
        printOut(game: addedScoreGame)
        
        XCTAssertEqual(testGame1.teams, addedScoreGame.teams)
        XCTAssertEqual(addedScoreGame.score, [14, 17])
    }
    
}
