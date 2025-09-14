//
//  MainView.swift
//  Greetings-Mac
//
//  Created by Andriiana Konar on 14/09/2025.
//

import SwiftUI

//Portrait = Compact width, regular height

//Ipad = Regular width, regular height

struct MainView: View {
    
    @Binding var language : String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        NavigationStack{
            GreetingsView()
                .toolbar{
                    ToolbarItem(placement: .navigation){
                        LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                    }
                }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}

