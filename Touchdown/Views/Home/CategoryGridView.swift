//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []){
                Section(
                    header: LazyGridCustomSectionView(isHeader: true),
                    footer: LazyGridCustomSectionView(isHeader: false)
                ) {
                    ForEach(categoryData) { item in
                        CategoryItemView(category: item)
                    }
                }
               
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
