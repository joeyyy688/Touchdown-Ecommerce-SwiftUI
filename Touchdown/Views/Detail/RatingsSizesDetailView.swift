//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Joseph on 10/18/23.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3){
            VStack (alignment: .leading, spacing: 3){
                Text("Ratings")
                    .font(.system(.footnote))
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack (alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            print("yes")
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }

                    }
                }
            }
            
            Spacer()
            
            VStack (alignment: .leading, spacing: 3) {
                Text("Sizes")
                    .font(.system(.footnote))
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack {
                    ForEach(sizes, id: \.self) { item in
                        Button {
                            print("yes")
                        } label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 4)
                                )
                                
                        }

                    }
                }
            }
        }//HSTACK
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
