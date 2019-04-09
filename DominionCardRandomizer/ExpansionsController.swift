//
//  ExpansionsController.swift
//  DominionCardRandomizer
//
//  Created by morse on 4/9/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ExpansionsController: UIViewController {
    @IBOutlet weak var expansionsDoneButton: UIButton!
    @IBOutlet weak var includeIntrigue: UISwitch!
    @IBOutlet weak var includeProsperity: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let generatedColor = BackgroundColorProvider().colors[previousIndex]
        view.backgroundColor = generatedColor
        expansionsDoneButton.tintColor = generatedColor
        includeIntrigue.setOn(intrigueSwitch, animated: false)
        includeProsperity.setOn(prosperitySwitch, animated: false)
        
        includeIntrigue.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)
        includeProsperity.onTintColor = UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 0.25)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissExpansions(_ sender: Any) {
        intrigueSwitch = includeIntrigue.isOn
        prosperitySwitch = includeProsperity.isOn
        
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
