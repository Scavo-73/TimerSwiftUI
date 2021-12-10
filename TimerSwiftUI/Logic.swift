//
//  Logic.swift
//  TimerSwiftUI
//
//  Created by Oskar Joziak on 10/12/21.
//

import Foundation

class StopWatchManager: ObservableObject {
    
    @Published var mode: stopWatchMode = .stopped
    @Published var secondsElapsed = 0.0
    
    var timer = Timer()
    
    func start() {
        mode = .running
         timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
             self.secondsElapsed = self.secondsElapsed + 0.1
         }
     }
    
    func pause() {
        timer.invalidate()
        mode = .paused
    }
    
    func stop() {
           timer.invalidate()
           secondsElapsed = 0
           mode = .stopped
       }
       
}

enum stopWatchMode {
    case running
    case stopped
    case paused
}
