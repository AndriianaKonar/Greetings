//
//  GreetingTextView.swift
//  Greetings
//
//  Created by Andriiana Konar on 07/11/2024.
//

import SwiftUI

struct GreetingTextView: View {
    
    @Binding var subttile: LocalizedStringKey
    
    let subttitles: [LocalizedStringKey] = [ "Exploring iOS Programming" , "Learning how to bake" , "Programming recipes" , "Exploring SwiftUI"]
    
    var greetingsTip = GreetingsTip()
    var body: some View {
        
            VStack(alignment: .leading , spacing: 0){
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subttile)
                    .font(.headline)
                    .fontWeight(.thin)
                    .popoverTip(greetingsTip)
            }
            .onTapGesture {
                subttile = subttitles
                    .randomElement() ?? LocalizedStringKey("Error")
            }
    }
}

#Preview {
    GreetingTextView(subttile: .constant("Exploring iOS Programming"))
}
