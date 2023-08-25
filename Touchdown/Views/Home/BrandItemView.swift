//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct BrandItemView: View {
    
    let brandItem: BrandModel
    
    var body: some View {
        ZStack(alignment: .center) {
            Image(brandItem.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
            
        }//: HSTACK
        .padding(5)
        .background(Color.white.cornerRadius(12))
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.gray, lineWidth: 1)
        )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brandItem: brandData[1])
            .previewLayout(.fixed(width: 200, height: 300))
    }
}
