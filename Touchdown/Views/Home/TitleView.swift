//
//  TitleView.swift
//  Touchdown
//
//  Created by Joseph on 8/24/23.
//

import SwiftUI

struct TitleView: View {
    
    let title: String
    
    var body: some View {
        HStack {

            Text(title)
                .font(.system(.largeTitle, weight: .heavy))
            
            Spacer()
        }//: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
