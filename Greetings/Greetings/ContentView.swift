//
//  ContentView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI


struct ContentView: View {
    
    let messages: [DataItemModel] = [
                .init(text: "Hello, there!" , color: .red),
                .init(text: "Welcome to SWIFT" , color: .orange),
                .init(text: "Are you ready to," , color: .yellow),
                .init(text: "start expolirng ?" , color: .green),
                .init(text: "Meow" , color: .blue)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            BubbleView(text: messages[0].text , color: messages[0].color)
            
            BubbleView(text: messages[1].text , color: messages[1].color)
            
            BubbleView(text: messages[2].text , color: messages[2].color)
            
            BubbleView(text: messages[3].text , color: messages[3].color)
            
            BubbleView(text: messages[4].text , color: messages[4].color)
        
        }
        .padding()
        
//        ZStack {
//            
//            LinearGradient(gradient: Gradient(colors: [.cyan, .blue]), startPoint: .top, endPoint: .bottom)
//                .opacity(0.7)
//                .ignoresSafeArea()
//                
//            
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundStyle(.tint)
//                
//                Text("Hello, world!")
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                    .padding(.horizontal)
//                    .foregroundStyle(Color.red)
//                    .background(Color.yellow)
//                    .cornerRadius(10)
//                    .shadow(color: .orange, radius: 10, x: 5, y: 5)
//                    .padding()
//            }
//            .padding()
//        }
    }
}

#Preview {
    ContentView()
}
