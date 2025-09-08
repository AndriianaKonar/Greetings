//
//  MessagesView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

struct MessagesView: View {
    
    
    let messages: [DataItemModel] = [
        .init(text: "Hello, there!" , color: .myRed),
                .init(text: "Welcome to SWIFT programming" , color: .myOrange),
                .init(text: "Are you ready to," , color:
                        .myYellow),
                .init(text: "start expolirng ?" , color: .myGreen),
                .init(text: "Meow" , color: .myBlue)
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
