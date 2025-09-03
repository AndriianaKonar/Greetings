//
//  DataItemModel.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import Foundation
import SwiftUI


struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}
