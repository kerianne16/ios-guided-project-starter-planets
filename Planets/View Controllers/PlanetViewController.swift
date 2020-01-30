//
//  PlanetViewController.swift
//  Planets
//
//  Created by Keri Levesque on 1/30/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

extension String {
    static var shouldShowPlutoKey = "ShouldShowPluto"
}
class PlanetViewController: UIViewController {
 
    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        updateViews()
        // Do any additional setup after loading the view.
    }
    
 @IBAction func done(_ sender: Any) {
 }
 @IBAction func changeShouldShowPluto(_ sender: Any) {
    let shouldShowPluto = shouldShowPlutoSwitch.isOn
    // this want saves the pluto even after closing the app 
    UserDefaults.standard.set(shouldShowPluto, forKey: .shouldShowPlutoKey)
 }
    func updateViews() {
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        
        shouldShowPlutoSwitch.isOn = shouldShowPluto
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
