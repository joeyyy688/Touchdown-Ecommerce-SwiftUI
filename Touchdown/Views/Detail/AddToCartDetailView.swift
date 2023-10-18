//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Joseph on 10/18/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    let productItemColor: Color
    
    var body: some View {
        Button {
            print("yes")
        } label: {
            Spacer()
            
            Text("ADD TO CART")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(15)
        .background(productItemColor)
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(productItemColor: productData[0].preferredColor)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
