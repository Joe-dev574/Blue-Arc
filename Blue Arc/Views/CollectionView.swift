//
//  CollectionView.swift
//  Blue Arc
//
//  Created by Joseph DeWeese on 10/6/24.
//

import SwiftUI

struct CollectionView: View {
    var day: Int
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 7)
                    .foregroundStyle(.blue)
                    .frame(width: 58, height:68)
                Text("\(day)")
                    .foregroundStyle(.white)
                    .zIndex(1)
                
                Image("weldlogo")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                    .frame(width: UIScreen.main.bounds.width / 8, height:  75)
            }
        }
    }
}

#Preview {
    CollectionView(day: 1)
}
