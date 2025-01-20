//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//
// Portrait Compact width, regular height
import SwiftUI
import TipKit

@main
struct GreetingsApp: App {
    
    @AppStorage("language") var language : String = "EN"
    @AppStorage("languageDirectonString") var languageDirectionString : String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    let resetTip = false
    
    var body: some Scene {
        WindowGroup {
            MainView(langiage: $language, layoutDirectionString: $languageDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    if resetTip{
                        try? Tips.resetDatastore()
                    }
                    
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
