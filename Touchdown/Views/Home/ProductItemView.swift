//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct ProductItemView: View {
    
    let productItem: ProductModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ZStack {
                Image(productItem.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(productItem.preferredColor)
            .cornerRadius(20)
            
            Text(productItem.name)
                .font(.system(.title3, weight: .heavy))
            
            Text(productItem.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(productItem: productData[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
    }
}
