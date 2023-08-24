//
//  ProductModel.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import Foundation
import SwiftUI

// MARK: - ProductModelElement
struct ProductModel: Codable, Identifiable {
    let id: Int
    let name, image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var preferredColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}
