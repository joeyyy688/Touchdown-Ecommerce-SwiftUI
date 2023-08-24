//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import Foundation


struct CategoryModel: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
