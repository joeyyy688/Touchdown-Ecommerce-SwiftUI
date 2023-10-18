//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Joseph on 8/25/23.
//

import SwiftUI

struct HeaderDetailView: View {
    
    let product: ProductModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.system(.largeTitle))
                .fontWeight(.black)
            
        }
        .foregroundColor(.white)
        .padding(10)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: productData[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
