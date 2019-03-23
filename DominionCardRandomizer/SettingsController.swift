//
//  SettingsController.swift
//  DominionCardRandomizer
//
//  Created by morse on 3/22/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    @IBOutlet weak var includeProsperity: UISwitch!
    @IBOutlet weak var doneButton: UIButton!
    
    var includeProsperityDeck: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let generatedColor = BackgroundColorProvider().colors[previousIndex]
        view.backgroundColor = generatedColor
        doneButton.tintColor = generatedColor
        print(includeProsperity.isOn)

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dismissSettings(_ sender: Any) {
        includedDecks(include: includeProsperity.isOn)
        print(includeProsperity.isOn)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func settingsSwipedDown(_ sender: Any) {
        includedDecks(include: includeProsperity.isOn)
        print(includeProsperityDeck)
        dismiss(animated: true, completion: nil)
    }
    
    func includedDecks(include: Bool) {
        print("incpros: \(include)")
        if include {
            categorizeCards(in: dominionDeck + prosperityDeck)
        } else {
            categorizeCards(in: dominionDeck)
        }
    }
//    func includeProsperityDeck() -> Bool {
//        guard let includeProsperity = includeProsperity?.isOn else {
//            return false
//        }
//        return includeProsperity
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
