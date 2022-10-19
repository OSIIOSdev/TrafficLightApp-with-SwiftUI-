//
//  Circle.swift
//  TrafficLightApp-with-SwiftUI-
//
//  Created by Илья on 19.10.2022.
//

import SwiftUI

struct CircleView: View {
    let color: UIColor
    var isActive: Bool
    
    var body: some View {
        VStack {
            Color(color)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .opacity(isActive ? 1.0 : 0.3)
        }
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, isActive: true)
    }
}
