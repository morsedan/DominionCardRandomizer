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
        displayCardLabel.text = "Tap \"Draw Cards\" to get\n10 random cards.\n\nTap \"Card Settings\" to Change\nwhich cards you get."
    }

    @IBAction func showCards(_ sender: Any) {
        
        ///
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        drawCardButton.tintColor = randomColor
        
        displayCardLabel.text = getCards()
    }
}
