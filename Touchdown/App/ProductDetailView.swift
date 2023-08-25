//
//  ProductItemDetailView.swift
//  Touchdown
//
//  Created by Joseph on 8/25/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let productItem: ProductModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.bottom)
            
            Text(productItem.name)
            
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(
            productItem.preferredColor
                .ignoresSafeArea(.all, edges: .all)
        
        )
    }
}

struct ProductItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(productItem: productData[0])
    }
}
