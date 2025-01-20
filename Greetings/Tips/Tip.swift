//
//  Tip.swift
//  Greetings
//
//  Created by Andriiana Konar on 20/01/2025.
//

import Foundation
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on text and disc")
    }
    
    var message: Text? {
        Text("text will be a randomly generated greeting")
    }
    
    var asset: Image? {
        Image(systemName: "scribble.variable")
    }
}
