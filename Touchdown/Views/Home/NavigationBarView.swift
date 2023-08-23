//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Joseph on 8/23/23.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {
                print("search button tapped")
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            Group {
                Text("TOUCH")
                
                Image("logo-dark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30.0, height: 30.0, alignment: .center)
                
                Text("DOWN")
                    
            }
            .offset(x: 0, y: isAnimated ? 0 : 30)
            .opacity(isAnimated ? 1 : 0)
            .onAppear(perform: {
                print("yes")
                withAnimation(.easeInOut(duration: 0.5), {
                    isAnimated.toggle()
                })
            })
            .font(.system(.title3))
            .fontWeight(.black)
            
            Spacer()
            
            Button(action: {
                print("cart button pressed")
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle().fill(.red)
                        .frame(width: 15, height: 15, alignment: .center)
                        .offset(x: 13, y: -11)
                }//: ZSTACK
            })
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
