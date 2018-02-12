//
//  ViewController.swift
//  GoTeam
//
//  Created by Andy Bezaire on 27/01/2018.
//  Copyright © 2018 DNNJN. All rights reserved.
//

import UIKit

enum SampleData {
    static let Team1 = Team(name: "Tampere", mascot: "Saints")
    static let Team2 = Team(name: "Turku", mascot: "Trojans")
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let testGame1 = Game(teams: [SampleData.Team1, SampleData.Team2], score: [14, 10])
        
        print(testGame1)
        
        gameDescriptionLabel.text = "\(testGame1)"
    }

   
    @IBOutlet weak var gameDescriptionLabel: UILabel!
    

}

