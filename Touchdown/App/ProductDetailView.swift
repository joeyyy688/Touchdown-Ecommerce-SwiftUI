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
            
            HeaderDetailView(product: productItem)
            
            TopPartDetailView(product: productItem)
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                
                RatingsSizesDetailView()
                    .padding(.top, -40)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Text(productItem.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 7)
                
                //Spacer()
                
                AddToCartDetailView(productItemColor: productItem.preferredColor)
                    .padding(.vertical, 15)
                
                
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -120)
                    .padding(.trailing, -5)
            )
        }
        .zIndex(0)
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
