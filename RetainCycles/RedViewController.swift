//
//  RedViewController.swift
//  RetainCycles
//
//  Created by Shawn Gee on 6/28/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
//    let ghost = Ghost()
    
    @IBOutlet weak var theSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ghost.delegate = self
    }
}

//extension RedViewController: GhostDelegate {
//    func didSwitchSomething() {
//        theSwitch.setOn(!theSwitch.isOn, animated: true)
//    }
//}
