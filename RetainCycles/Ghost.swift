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
    
    init() {
       switchSomething(timer: nil)
    }
    
    func switchSomething(timer: Timer?) {
        delegate?.didSwitchSomething()
        self.switchTimer?.invalidate()
        self.switchTimer = Timer.scheduledTimer(withTimeInterval: Double.random(in: 1...6), repeats: false, block: switchSomething(timer:))
    }
}
