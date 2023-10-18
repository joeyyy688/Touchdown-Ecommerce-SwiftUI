//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Joseph on 8/25/23.
//

import SwiftUI

struct TopPartDetailView: View {
    
    let product: ProductModel
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.formattedPrice)
                    .font(.system(.largeTitle))
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            }//: VSTACK
            .offset(y: isAnimating ? -50 :  -75)
            
            Spacer()
            
            Image(product.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0: -35 )
            
        }// HSTACK
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.60), {
                isAnimating.toggle()
            })
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: productData[0])
    }
}
