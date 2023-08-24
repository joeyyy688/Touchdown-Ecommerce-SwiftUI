//
//  LazyGridCustomSectionView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct LazyGridCustomSectionView: View {
    
    var isHeader: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.system(.footnote))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: isHeader ? -90 : 90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(20))
        .frame(width: 85)
    }
}

struct LazyGridCustomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridCustomSectionView(isHeader: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
