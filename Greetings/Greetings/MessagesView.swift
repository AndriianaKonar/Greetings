//
//  MessagesView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

/// MessagesView
///  -------------
///  A SwiftUI container that displays a vertical list of BubbleView items.
///
///  Features:
///  - Uses `DataItemModel` to define text and color for each bubble.
///  - Predefined sample messages for demonstration.
///  - Aligns bubbles in a VStack, leading-aligned.
struct MessagesView: View {
    
    
    let messages: [DataItemModel] = [
        .init(text: "Hello, there!" , color: .myRed),
                .init(text: "Welcome to SWIFT programming" , color: .myOrange),
                .init(text: "Are you ready to," , color:
                        .myYellow),
                .init(text: "start exploring ?" , color: .myGreen),
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
