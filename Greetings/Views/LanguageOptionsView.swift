//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Andriiana Konar on 11/11/2024.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var langiage : String
    @Binding var layoutDirectionString : String 
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
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
                
            }
    }
}

#Preview {
    LanguageOptionsView(langiage: .constant("EN"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
