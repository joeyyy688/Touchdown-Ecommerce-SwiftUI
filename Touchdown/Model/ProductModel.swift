//
//  ProductModel.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import Foundation

// MARK: - ProductModelElement
struct ProductModel: Codable, Identifiable {
    let id: Int
    let name, image: String
    let price: Int
    let description: String
    let color: [Double]
}
