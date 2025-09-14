//
//  Greetings_MacApp.swift
//  Greetings-Mac
//
//  Created by Andriiana Konar on 12/09/2025.
//

import SwiftUI
import TipKit

//Portrait = Compact width, regular height


@main
struct Greetings_MacApp: App {

    @AppStorage("language") private var language : String = "en"
    @AppStorage("languageDirectionString") private var languageDirectionString : String = LEFT_TO_RIGHT
    
    var layoutDirection : LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    let resetTip = true
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    if resetTip {
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
