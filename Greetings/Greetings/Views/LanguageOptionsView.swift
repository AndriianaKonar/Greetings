//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var language : String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "translate")
            .contextMenu{
                Button("English"){
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("German"){
                    language = "de"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Hebrew"){
                    language = "he"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
                Button("Italian"){
                    language = "it"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Slovak"){
                    language = "sk"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
