//
//  CircleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

struct CircleView: View {

    let lineWidth = 15
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees:-180)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.myRed, .myOrange, .myYellow, .myGreen, .myBlue, .myPurple, .myPink], center: .center, angle: .zero)
    }
    
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: CGFloat(lineWidth))
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation{
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    CircleView()
}
