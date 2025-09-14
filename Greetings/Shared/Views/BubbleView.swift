//
//  BubbleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

/// BubbleView
///  -----------
///  A reusable SwiftUI view that displays a text "bubble" with dynamic styling.
///
///  Features:
///  - Shows customizable text inside a rounded, shadowed background.
///  - Background color can be initialized and changes randomly on tap with animation.
///  - Uses a predefined set of custom colors (`myBlue`, `myGreen`, etc.).
///
///  Example:
///  BubbleView(text: "Hello World", color: .green)
///
///  Interaction:
///  - Tap the bubble to animate and switch to a random color.
struct BubbleView: View {
    
    let text: LocalizedStringKey
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
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPotraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIpad ? .largeTitle : .body
    }

    
    var body: some View {

        Text(text)
            .font(font)
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
