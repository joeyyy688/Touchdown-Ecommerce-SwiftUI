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
        NavigationView {
            ZStack {
                VStack(spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            FeaturedItemView(playersData: playersData)
                                .cornerRadius(10)
                                .padding(15)
                                .frame(width: 400, height: 240)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 20, content: {
                                ForEach(productData){ item in
                                    NavigationLink(
                                        destination: {
                                        ProductDetailView(productItem: item)
                                                //.navigationBarBackButtonHidden(true)
                                    }, label: {
                                        ProductItemView(productItem: item)
                                    })
                                }
                            })
                            .padding(.horizontal)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                        
                    
                   
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            }//: ZSTACK
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
