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
    
    @State private var language: String = "EN"
    @State private var layoutDirecton: String = Left_to_Right
    
    var body: some Scene {
        WindowGroup {
            MainView(selectedLanguage: $language, layoutDirecton: $layoutDirecton)
        }
    }
}
