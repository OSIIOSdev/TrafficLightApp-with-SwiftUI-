//
//  ContentView.swift
//  TrafficLightApp-with-SwiftUI-
//
//  Created by Илья on 18.10.2022.
//

import SwiftUI

enum Lights {
    case red
    case yellow
    case green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = Lights.red
    
    @State private var nextButtonLabel = "NEXT"
    @State private var startButtonLabel = "START"
    
    private func nextColor() {
        let lightOn = 1.0
        let lightOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightOff
            redLightState = lightOn
        case .yellow:
            currentLight = .green
            redLightState = lightOff
            yellowLightState = lightOn
        case .green:
            currentLight = .red
            yellowLightState = lightOff
            greenLightState = lightOn
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                CircleView(color: .red, opacity: redLightState)
                CircleView(color: .yellow, opacity: yellowLightState)
                CircleView(color: .green, opacity: greenLightState)
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
