//
//  CarouselSliderView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct FeaturedItemView: View {
    let playersData: [PlayerModel]
    
    var body: some View {
        TabView{
            ForEach(playersData) { item in
                Image(item.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .padding(.top, 20)
                    .padding(.vertical, 20)
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct CarouselSliderView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(playersData: playersData)
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
