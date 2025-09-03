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
            
            ForEach(messages) { dataItem in
                BubbleView(text: dataItem.text , color: dataItem.color)
            }
        
        }
        .padding()
           
//            LinearGradient(gradient: Gradient(colors: [.cyan, .blue]), startPoint: .top, endPoint: .bottom)
//                .opacity(0.7)
//                .ignoresSafeArea()

    }
}

#Preview {
    ContentView()
}
