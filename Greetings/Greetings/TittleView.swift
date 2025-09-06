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
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees:180)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink], center: .center, angle: .zero)
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Explore IOS world")
                    .font(.headline)
                    .fontWeight(.thin)
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
    TittleView()
        .padding()
}
