//
//  TittleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

struct TittleView: View {
    var body: some View {
        VStack(alignment: .leading) {
           Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Explore IOS world")
                .font(.headline)
                .fontWeight(.thin)
        }
    }
}

#Preview {
    TittleView()
}
