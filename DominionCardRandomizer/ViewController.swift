//
//  ViewController.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/18/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayCardLabel: UILabel!
    @IBOutlet weak var drawCardButton: UIButton!
    
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categorizeCards(in: dominionDeck + prosperityDeck)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showCards(_ sender: Any) {
//        if SettingsController().includeProsperity.isOn {
//            let allDecks = dominionDeck + prosperityDeck
//        } else {
//            let allDecks = dominionDeck
//        }
//        let includePros = SettingsController().includeProsperityDeck
//        if includePros {
//            categorizeCards(in: dominionDeck + prosperityDeck)
//        } else {
//            categorizeCards(in: dominionDeck)
//        }
//        print(includePros)
        ///
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        drawCardButton.tintColor = randomColor
        displayCardLabel.text = determinePlayingCards()
    }
}
