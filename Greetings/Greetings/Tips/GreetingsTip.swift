//
//  GreetingsTip.swift
//  Greetings
//
//  Created by Andriiana Konar on 09/09/2025.
//

import Foundation
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on")
    }
    
    var message: Text? {
        Text("Text will be randomly generated")
    }
    
    var asset: Image? {
        Image(systemName: "star.fill")
            .symbolRenderingMode(.hierarchical)
    }
}
