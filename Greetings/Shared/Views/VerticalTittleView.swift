//
//  VerticalTittleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

struct VerticalTittleView: View {
    @State private var subtitle: LocalizedStringKey = "Explore IOS programming world"
    
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTittleView(subtitle: $subtitle)
            
            CircleView()
            
            Spacer()
        }
    }
}

#Preview {
    VerticalTittleView()
}
