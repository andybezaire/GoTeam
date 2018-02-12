//
//  ViewController.swift
//  GoTeam
//
//  Created by Andy Bezaire on 27/01/2018.
//  Copyright © 2018 DNNJN. All rights reserved.
//

import UIKit

// MARK: - Types

// MARK: - Constants

enum SampleData {
    static let Team1 = Team(name: "Tampere", mascot: "Saints")
    static let Team2 = Team(name: "Turku", mascot: "Trojans")
    
    static let TestGame1 = Game(teams: [Team1, Team2], score: [14, 10])
}

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var gameDescriptionLabel: UILabel!
    
    
    // MARK: - Parameters
    var game: Game? { didSet {
        guard let game=game else { return }
        gameDescriptionLabel.text = "\(game)"
        }}
    
    // MARK: - Actions
    
    @IBAction func loadFromFunction(_ sender: UIButton) {
        game = SampleData.TestGame1
        
    }
    
    
    // MARK: - lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        print(SampleData.TestGame1)
        
    }
    
    
    // MARK: - Segue
    
    
    // MARK: - Utility Functions

   
}




