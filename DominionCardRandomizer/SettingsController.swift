//
//  SettingsController.swift
//  DominionCardRandomizer
//
//  Created by morse on 3/22/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissSettings(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func settingsSwipedDown(_ sender: Any) {
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
