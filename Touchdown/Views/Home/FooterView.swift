//
//  FooterView.swift
//  Touchdown
//
//  Created by Joseph on 8/23/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight, and durable football helmets in the market at affordable prices.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © JKD \n All rights reserved")
                .font(.system(.footnote))
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .layoutPriority(1)
                
                
        }//: VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
