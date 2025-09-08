//
//  TittleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

struct TittleView: View {
    
    let lineWidth = 15
    let diameter = 70.0
    let subtitles = ["Discover new horizons" , "Energy that inspires", "Unleash your creativity"]
    
    @State private var subtitle = "Explore IOS programming world"
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees:180)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.myRed, .myOrange, .myYellow, .myGreen, .myBlue, .myPurple, .myPink], center: .center, angle: .zero)
    }
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                subtitle = subtitles.randomElement()!
            }
            
            Spacer()
            
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
}

#Preview {
    VStack {
        TittleView()
            .padding()
        
        Spacer()
    }
}
