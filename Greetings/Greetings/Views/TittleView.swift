//
//  TittleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

/// TittleView
///  -----------
///  A SwiftUI view that displays an app title with dynamic subtitle and an animated circle.
///
///  Features:
///  - Title "Greetings" with a tappable subtitle that changes randomly.
///  - Decorative circular ring with angular gradient.
///  - Ring animates rotation when tapped.
struct TittleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Explore IOS programming world"
    
    
    var body: some View {
        HStack {
            GreetingsTittleView(subtitle: $subtitle)
            
            Spacer()
            
            CircleView()
        }
    }
}

#Preview {
    VStack {
        TittleView()
            .padding()
        
        Spacer()
    }
}
