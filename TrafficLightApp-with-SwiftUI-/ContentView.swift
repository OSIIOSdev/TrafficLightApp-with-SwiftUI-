//
//  ContentView.swift
//  TrafficLightApp-with-SwiftUI-
//
//  Created by Илья on 18.10.2022.
//

import SwiftUI

struct ColorCircleView: View {
    @State private var opacityValue = 0.3
    @State private var nextButtonLabel = "NEXT"
    @State private var startButtonLabel = "START"
    
    var body: some View {
        VStack {
            VStack {
                Circle()
                    .foregroundColor(.red)
                    .opacity(opacityValue)
                    .frame(width: 150, height: 150)
                Circle()
                    .foregroundColor(.yellow)
                    .opacity(opacityValue)
                    .frame(width: 150, height: 150)
                Circle()
                    .foregroundColor(.green)
                    .opacity(opacityValue)
                    .frame(width: 150, height: 150)
            }
            .padding()
            
            Spacer()
            
            VStack {
                
                Button {
                    opacityValue = 1
                    startButtonLabel = nextButtonLabel
                    
                    
                } label: {
                    Text(startButtonLabel)
                        .font(.title)
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
