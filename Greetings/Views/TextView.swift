//
//  TextView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI

struct TextView: View {
    
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [.red, .blue, .yellow, .green , .orange , .purple , Color(red: 0.5, green: 0, blue: 0.5), Color(red: 0, green: 0.5, blue: 0.5), Color(red: 139/255, green: 207/255, blue: 240/255), Color(red: 1, green: 215/255, blue: 0)]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitIphone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isPortraitIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font : Font {
        isPortraitIpad ? .largeTitle : .body
    }
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .padding(.all)
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                color = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    VStack{
        TextView(text: "Hello, World!", color: .green)
        TextView(text: "Hello, World!", color: .blue)
        TextView(text: "Hello, World!", color: .yellow)
    }
}
