//
//  TimerButtonView.swift
//  TimerSwiftUI
//
//  Created by Oskar Joziak on 10/12/21.
//

import SwiftUI

struct TimerButton: View {
       let label: String
       let buttonColor: Color
       
       var body: some View {
           Text(label)
               .foregroundColor(.white)
               .padding(.vertical, 20)
               .padding(.horizontal, 90)
               .background(buttonColor)
               .cornerRadius(10)
       }
}

struct TimerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TimerButton(label: "Start", buttonColor: .blue)
    }
}
