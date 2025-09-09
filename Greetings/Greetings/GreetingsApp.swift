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
    
    @State private var language : String = "en"
    @State private var languageDirection : String = LEFT_TO_RIGHT
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirection)
        }
    }
}
