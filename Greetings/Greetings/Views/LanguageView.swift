//
//  LanguageView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

struct LanguageView: View {
    
    @Binding var selectedLanguage: String
    @Binding var layoutDirectonString: String
    
    var body: some View {
        Image(systemName: "translate")
            .contextMenu{
                Button("English") {
                    selectedLanguage = "en"
                    layoutDirectonString = Left_to_Right
                }
                Button("German") {
                    selectedLanguage = "de"
                    layoutDirectonString = Left_to_Right
                }
                Button("Hebrew") {
                    selectedLanguage = "he"
                    layoutDirectonString = Right_to_Left
                }
                Button("Italian") {
                    selectedLanguage = "it"
                    layoutDirectonString = Left_to_Right
                }
                Button("Slovak") {
                    selectedLanguage = "sk"
                    layoutDirectonString = Left_to_Right
                }

                
            }
    }
}

#Preview {
    LanguageView(selectedLanguage: .constant("en"), layoutDirectonString: .constant(Left_to_Right))
}
