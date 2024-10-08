//
//  HeaderView.swift
//  Blue Arc
//
//  Created by Joseph DeWeese on 10/7/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Weld")
                .font(.title3)
                .fontWeight(.bold)
                               .padding(.leading, 10)
                               .foregroundColor(.arc)
                               .offset(x: 8, y: 2)
            Text("Tactics")
                .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(.primary)
            
            Spacer()
        }
    }
}

#Preview {
    HeaderView()
}
