//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category: CategoryModel
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .foregroundColor(.gray)
                
                Spacer()
                
            }//: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        })//: BUTTON
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categoryData[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background()
    }
}
