//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.cyan, .purple]), startPoint: .top, endPoint: .bottom)
                .opacity(0.5)
                .ignoresSafeArea()
            
            
            HStack {
                
                VerticalTittleView()
                
                
                Spacer()
                
                MessagesView()
                
                
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
