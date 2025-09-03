//
//  ContentView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Hello, there!")
                .fontWeight(.semibold)
                .padding()
                .background(Color.green.opacity(0.4))
                .cornerRadius(20)
                .shadow(color: .green, radius: 5, x: 10, y: 10)
            
            Text("Welcome to SWIFT")
                .fontWeight(.semibold)
                .padding()
                .background(Color.orange.opacity(0.4))
                .cornerRadius(20)
                .shadow(color: .orange,radius: 5, x: 10, y: 10)
            
            Text("Are you ready to,")
                .fontWeight(.semibold)
                .padding()
                .background(Color.blue.opacity(0.4))
                .cornerRadius(20)
                .shadow(color: .blue, radius: 5, x: 10, y: 10)
            
            Text("start expolirng ?")
                .fontWeight(.semibold)
                .padding()
                .background(Color.red.opacity(0.4))
                .cornerRadius(20)
                .shadow(color: .red, radius: 5, x: 10, y: 10)
            
            Text("Meow")
                .fontWeight(.semibold)
                .padding()
                .background(Color.yellow.opacity(0.4))
                .cornerRadius(20)
                .shadow(color: .yellow, radius: 5, x: 10, y: 10)
                
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
