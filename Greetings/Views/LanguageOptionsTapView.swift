//
//  LanguageOptionsTapView.swift
//  Greetings
//
//  Created by Andriiana Konar on 20/01/2025.
//

import SwiftUI

struct LanguageOptionsTapView: View {
    
    @Binding var langiage : String
    @Binding var layoutDirectionString : String
    
    var body: some View {
        
        Menu {
            Button("English") {
                langiage = "EN"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("Spanish") {
                langiage = "ES"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
            Button("Hebrew") {
                langiage = "HE"
                layoutDirectionString = RIGHT_TO_LEFT
            }
            
            Button("Arabic") {
                langiage = "AR"
                layoutDirectionString = RIGHT_TO_LEFT
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    LanguageOptionsTapView(langiage: .constant("EN"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
