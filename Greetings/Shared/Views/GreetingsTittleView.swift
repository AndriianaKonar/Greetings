//
//  GreetingsTittleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

struct GreetingsTittleView: View {
    
    let subtitles: [LocalizedStringKey] = ["Discover new horizons" , "Energy that inspires", "Unleash your creativity"]
    
    @Binding var subtitle: LocalizedStringKey
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Greetings")
                .font(.largeTitle)
                .bold()
            #if os(macOS)
            Text(subtitle)
                .font(.largeTitle)
                .fontWeight(.regular)
            #elseif os(iOS)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
            #endif
        }
        .onTapGesture {
            subtitle = subtitles.randomElement() ?? LocalizedStringKey("Explore IOS programming world")
        }
    }
}

#Preview {
    GreetingsTittleView(subtitle: .constant("Explore IOS programming world"))
}
