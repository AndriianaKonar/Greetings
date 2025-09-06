//
//  MessagesView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

struct MessagesView: View {
    
    
    let messages: [DataItemModel] = [
                .init(text: "Hello, there!" , color: .red),
                .init(text: "Welcome to SWIFT programming" , color: .orange),
                .init(text: "Are you ready to," , color: .yellow),
                .init(text: "start expolirng ?" , color: .green),
                .init(text: "Meow" , color: .blue)
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(messages) { dataItem in
                BubbleView(text: dataItem.text , color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
