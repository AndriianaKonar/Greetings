//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import SwiftUI

//Portrait = Compact width, regular height


@main
struct GreetingsApp: App {
    
    @State private var selectedLanguage: String = "en"
    @State private var languageDirectionString: String = Left_to_Right
    
    var layoutDirection: LayoutDirection {
        languageDirectionString == Left_to_Right ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(
                selectedLanguage: $selectedLanguage,
                layoutDirecton: $languageDirectionString)
        }
        .environment(\.locale,Locale(identifier: selectedLanguage))
        .environment(\.layoutDirection, layoutDirection)
    }
}
