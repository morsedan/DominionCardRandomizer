//
//  SettingsController.swift
//  DominionCardRandomizer
//
//  Created by morse on 3/22/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    @IBOutlet var settingsSwipedDown: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

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
