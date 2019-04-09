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
    @IBOutlet weak var requirePlus: UISwitch!
    @IBOutlet weak var requireAction: UISwitch!
    @IBOutlet weak var requireBuy: UISwitch!
    @IBOutlet weak var requireCoin: UISwitch!
    @IBOutlet weak var requireTrash: UISwitch!
    @IBOutlet weak var requireGain: UISwitch!
    @IBOutlet weak var allowAttack: UISwitch!
    @IBOutlet weak var requireReaction: UISwitch!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let generatedColor = BackgroundColorProvider().colors[previousIndex]
        view.backgroundColor = generatedColor
        doneButton.tintColor = generatedColor

        requirePlus.setOn(plusCardSwitch, animated: false)
        requireAction.setOn(plusActionSwitch, animated: false)
        requireBuy.setOn(plusBuySwitch, animated: false)
        requireCoin.setOn(plusCoinSwitch, animated: false)
        requireTrash.setOn(trashCardSwitch, animated: false)
        requireGain.setOn(gainCardSwitch, animated: false)
        allowAttack.setOn(isAttackSwitch, animated: false)
        requireReaction.setOn(isDefenseSwitch, animated: false)
        

        requirePlus.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        requireAction.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        requireBuy.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        requireCoin.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        requireTrash.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        requireGain.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        allowAttack.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        requireReaction.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
    }
    
    
    @IBAction func dismissSettings(_ sender: Any) {
        
        plusCardSwitch = requirePlus.isOn
        plusActionSwitch = requireAction.isOn
        plusBuySwitch = requireBuy.isOn
        plusCoinSwitch = requireCoin.isOn
        trashCardSwitch = requireTrash.isOn
        gainCardSwitch = requireGain.isOn
        isAttackSwitch = allowAttack.isOn
        isDefenseSwitch = requireReaction.isOn
        
        twoMin = 1
        twoMax = 2
        threeMin = 1
        threeMax = 3
        fourMin = 2
        fourMax = 5
        fivePlusMin = 1
        fivePlusMax = 4
//        includedDecks(prosperity: includeProsperity.isOn)
        // FIXME: reset displayCardLabel.text
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func settingsSwipedDown(_ sender: Any) {
//        prosperitySwitch = includeProsperity.isOn
        plusCardSwitch = requirePlus.isOn
        plusActionSwitch = requireAction.isOn
        plusBuySwitch = requireBuy.isOn
        plusCoinSwitch = requireCoin.isOn
        trashCardSwitch = requireTrash.isOn
        gainCardSwitch = requireGain.isOn
        isAttackSwitch = allowAttack.isOn
        isDefenseSwitch = requireReaction.isOn
        
        twoMin = 1
        twoMax = 2
        threeMin = 1
        threeMax = 3
        fourMin = 2
        fourMax = 5
        fivePlusMin = 1
        fivePlusMax = 4
//        includedDecks(prosperity: includeProsperity.isOn)
        // FIXME: reset displayCardLabel.text
        dismiss(animated: true, completion: nil)
    }
    
//    func includedDecks(prosperity: Bool) {
//        if prosperity {
//            categorizeCards(in: dominionDeck + prosperityDeck)
//        } else {
//            categorizeCards(in: dominionDeck)
//        }
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
