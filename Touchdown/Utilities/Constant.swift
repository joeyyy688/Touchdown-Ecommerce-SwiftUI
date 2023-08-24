//
//  Constant.swift
//  Touchdown
//
//  Created by Joseph on 8/23/23.
//

import SwiftUI


// MARK: - COLORS

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)


// MARK: - DATA

let playersData: [PlayerModel] = jsonLoader("player.json")
let categoryData: [CategoryModel] = jsonLoader("category.json")
let productData: [ProductModel] = jsonLoader("product.json")
let brandData: [BrandModel] = jsonLoader("brand.json")
