//
//  ContentView.swift
//  Touchdown
//
//  Created by Joseph on 8/22/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                NavigationBarView()
                    .padding(.horizontal)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
