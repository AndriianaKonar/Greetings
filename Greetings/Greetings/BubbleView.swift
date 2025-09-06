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
        .blue,
        .green,
        .yellow,
        .red,
        .orange,
        .purple,
        .pink,
        .teal,
        .mint,
        .indigo,
        .brown,
        .cyan,
        .gray,
        .white
    ]

    
    var body: some View {

        Text(text)
            .fontWeight(.semibold)
            .padding()
            .background(color.opacity(0.7))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
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
