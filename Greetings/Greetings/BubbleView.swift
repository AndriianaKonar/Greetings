//
//  BubbleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

struct BubbleView: View {
    
    let text: String
    let color : Color
    
    var body: some View {

        Text(text)
            .fontWeight(.semibold)
            .padding()
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
        
    }
}

#Preview {
    BubbleView(text: "hello there", color: .green)
}
