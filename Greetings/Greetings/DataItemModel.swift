//
//  DataItemModel.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//

import Foundation
import SwiftUI


///  DataItemModel
///  --------------
///  A simple data model representing a single item with:
///  - Unique identifier (UUID)
///  - Display text
///  - Associated color
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}
