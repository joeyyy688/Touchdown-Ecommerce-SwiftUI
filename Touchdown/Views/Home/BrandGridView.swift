//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []){
                ForEach(brandData) { item in
                    BrandItemView(brandItem: item)
                }
               
            }
            .frame(height: 250)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: SCROLLVIEW
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
