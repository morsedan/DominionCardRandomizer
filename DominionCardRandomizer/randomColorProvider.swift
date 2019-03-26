//
//  randomColorProvider.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/20/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit
import GameKit

/// Sets up a placeholder so that no color is returned twice consecutively
var previousIndex = 0


struct BackgroundColorProvider {
    /// Sets up background colors
    let colors = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), //teal color
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), //yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), //red color
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), //orange color
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), //dark color
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), //purple color
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0), //green color
    ]
    
    /// Returns a random background color
    func randomColor() -> UIColor {
        var randomNumber = 0
        repeat {
            randomNumber = Int.random(in: 0..<colors.count)
        } while randomNumber == previousIndex
        previousIndex = randomNumber
        return colors[randomNumber]
    }
}
