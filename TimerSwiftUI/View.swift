//
//  View.swift
//  TimerSwiftUI
//
//  Created by Oskar Joziak on 10/12/21.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var stopWatchManager = StopWatchManager()
    
    var body: some View {
        VStack {
            Text(String(format: "%.1f", stopWatchManager.secondsElapsed))
                .font(.custom("Avenir", size: 40))
                .padding(.top, 200)
                .padding(.bottom, 100)
            
            if stopWatchManager.mode == .stopped {
                           Button(action: {self.stopWatchManager.start()}) {
                               TimerButton(label: "Start", buttonColor: .blue)
                           }
                       }
            if stopWatchManager.mode == .running {
                           Button(action: {self.stopWatchManager.pause()}) {
                               TimerButton(label: "Pause", buttonColor: .blue)
                           }
                       }
            if stopWatchManager.mode == .paused {
                            Button(action: {self.stopWatchManager.start()}) {
                                TimerButton(label: "Start", buttonColor: .blue)
                            }
                            Button(action: {self.stopWatchManager.stop()}) {
                                TimerButton(label: "Stop", buttonColor: .red)
                            }
                                .padding(.top, 30)
                        }
            Spacer()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
