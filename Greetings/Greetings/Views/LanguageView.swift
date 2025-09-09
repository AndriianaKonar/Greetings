//
//  LanguageView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

struct LanguageView: View {
    
    @Binding var selectedLanguage: String
    @Binding var layoutDirecton: String
    
    var body: some View {
        Image(systemName: "translate")
            .contextMenu{
                Button("English") {
                    selectedLanguage = "EN"
                    layoutDirecton = "Left_to_Right"
                }
                Button("German") {
                    selectedLanguage = "DE"
                    layoutDirecton = "Left_to_Right"
                }
                Button("Hebrew") {
                    selectedLanguage = "HB"
                    layoutDirecton = "Right_to_Left"
                }
                Button("Italian") {
                    selectedLanguage = "IT"
                    layoutDirecton = "Left_to_Right"
                }
                Button("Slovak") {
                    selectedLanguage = "SK"
                    layoutDirecton = "Left_to_Right"
                }

                
            }
    }
}

#Preview {
    LanguageView(selectedLanguage: .constant("EN"), layoutDirecton: .constant(Left_to_Right))
}
