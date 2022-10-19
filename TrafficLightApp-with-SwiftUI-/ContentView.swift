//
//  ContentView.swift
//  TrafficLightApp-with-SwiftUI-
//
//  Created by Илья on 18.10.2022.
//

enum Lights {
    case red
    case yellow
    case green
}

import SwiftUI

struct ColorCircleView: View {
    @State private var activeLight = [false, false, false]
    
    @State private var currentLight = Lights.red
    
    @State private var nextButtonLabel = "NEXT"
    @State private var startButtonLabel = "START"
    
    var body: some View {
        VStack {
            VStack {
                CircleView(color: .red, isActive: activeLight[0])
                CircleView(color: .yellow, isActive: activeLight[1])
                CircleView(color: .green, isActive: activeLight[2])
            }
            .padding()
            
            Spacer()
            
            VStack {
                Button {
                    startButtonLabel = nextButtonLabel
                    
                    switch currentLight {
                    case .red:
                        activeLight[0].toggle()
                        activeLight[2] = false
                        currentLight = Lights.yellow
                    case .yellow:
                        activeLight[0].toggle()
                        activeLight[1].toggle()
                        currentLight = Lights.green
                    case .green:
                        activeLight[1].toggle()
                        activeLight[2].toggle()
                        currentLight = Lights.red
                    }
                } label: {
                    Text(startButtonLabel)
                        .font(.title)
                        .padding(.horizontal, 10)
                        .foregroundColor(.white)
                        .background(Color(UIColor.systemBlue))
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView()
    }
}
