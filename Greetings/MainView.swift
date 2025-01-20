//
//  MainView.swift
//  Greetings
//
//  Created by Andriiana Konar on 07/11/2024.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitIphone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isPortraitIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var langiage : String
    @Binding var layoutDirectionString : String
    
    var body: some View {
        if isPortraitIphone || isPortraitIpad {
            NavigationStack{
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(langiage: $langiage, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            NavigationStack{
                LandscapeView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(langiage: $langiage, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(langiage: .constant("EN"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
