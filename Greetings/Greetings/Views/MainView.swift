//
//  MainView.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import SwiftUI

//Portrait = Compact width, regular height

//Ipad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPotraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        if isPotraitPhone || isIpad {
            GreetingsView()
        } else {
            LandscapeGreetingsView()
        }
        
    }
}

#Preview {
    MainView()
}
