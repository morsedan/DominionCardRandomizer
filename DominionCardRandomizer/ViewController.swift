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
        // Do any additional setup after loading the view, typically from a nib.
        categorizeCards(in: dominionDeck)
        displayCardLabel.text = "Cards will appear here.\n\n\n\n\n\n\n\n\n"
    }

    @IBAction func showCards(_ sender: Any) {
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        drawCardButton.tintColor = randomColor
        
        let playingTwos = (createRandomDeck(from: costsTwoDeck, with: 1))
        let playingThrees = (createRandomDeck(from: costsThreeDeck, with: 2))
        let playingFours = (createRandomDeck(from: costsFourDeck, with: 4))
        let playingFivePlus = (createRandomDeck(from: costsFivePlusDeck, with: 3))
        let playingCards = (playingTwos + playingThrees + playingFours + playingFivePlus).sorted()
        
        displayCardLabel.text = "\(playingCards[0])\n\(playingCards[1])\n\(playingCards[2])\n\(playingCards[3])\n\(playingCards[4])\n\(playingCards[5])\n\(playingCards[6])\n\(playingCards[7])\n\(playingCards[8])\n\(playingCards[9])"
    }
}

