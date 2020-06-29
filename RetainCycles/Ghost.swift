//
//  Ghost.swift
//  RetainCycles
//
//  Created by Shawn Gee on 6/28/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import Foundation

protocol GhostDelegate {
    func didSwitchSomething()
}

class Ghost {
   
    var switchTimer: Timer?
    var delegate: GhostDelegate?
    var id = UUID()
    
    init() {
        switchTimer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true, block: { _ in
            print("Ghost is switching")
            self.delegate?.didSwitchSomething()
        })
    }
}
