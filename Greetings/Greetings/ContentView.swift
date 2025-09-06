//
//  ContentView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.cyan, .purple]), startPoint: .top, endPoint: .bottom)
                .opacity(0.5)
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading) {
                
                TittleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                
                Spacer()
                
            }
            .padding()
        }
           


    }
}

#Preview {
    ContentView()
}
