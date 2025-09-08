//
//  DataItemModel.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/09/2025.
//
//  DataItemModel
//  --------------
//  A simple data model representing a single item with:
//  - Unique identifier (UUID)
//  - Display text
//  - Associated color
//


import Foundation
import SwiftUI


struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}
