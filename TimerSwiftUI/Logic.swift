//
//  Logic.swift
//  TimerSwiftUI
//
//  Created by Oskar Joziak on 10/12/21.
//

import Foundation

class StopWatchManager: ObservableObject {
    
    @Published var mode: stopWatchMode = .stopped
    @Published var secondsLeft = 60
 
    
    var timer = Timer()
    
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            if self.secondsLeft == 0 {
                self.secondsLeft = 61
                self.mode = .stopped
                timer.invalidate()
             }
            self.secondsLeft -= 1
         })
     }
    
    func stop() {
        self.secondsLeft = 60
        self.mode = .stopped
        timer.invalidate()
       }
    
    func pause() {
        self.mode = .paused
        timer.invalidate()
    }

}

enum stopWatchMode {
    case running
    case stopped
    case paused
}



