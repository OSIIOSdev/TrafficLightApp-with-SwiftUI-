//
//  Circle.swift
//  TrafficLightApp-with-SwiftUI-
//
//  Created by OSIIOSdev on 19.10.2022.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1)
    }
}
