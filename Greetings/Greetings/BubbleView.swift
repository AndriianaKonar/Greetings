//
//  BubbleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

struct BubbleView: View {
    
    let text: String
    @State var color : Color
    
    let colors: [Color] = [
        .myBlue,
        .myGreen,
        .myRed,
        .myYellow,
        .myOrange,
        .myPurple,
        .myPink,
        .myCyan,
    ]

    
    var body: some View {

        Text(text)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            .padding()
            .background(color.opacity(0.9))
            .cornerRadius(20)
            .shadow(color: color, radius: 10, x: 5, y: 5)
            .onTapGesture {
                withAnimation {
                    color = colors.randomElement()! //or color = colors.randomElement() ?? default some color
                }
            }
        
    }
}

#Preview {
    BubbleView(text: "hello there", color: .green)
}
