//
//  FeedView.swift
//  Blue Arc
//
//  Created by Joseph DeWeese on 10/5/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            Color.clear
                .edgesIgnoringSafeArea(.all)
            //   MARK: - Header
            ZStack{
                ScrollView {
                    VStack {
                        VStack {
                            ZStack{
                                VStack(alignment: .leading){
                                    Image("weldpic")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle.rect(cornerRadius: 7))
                                }
                                VStack{
                                    HStack{
                                        Image("logo")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(RoundedRectangle.rect(cornerRadius: 7))
                                            .frame(width: 20, height: 40)
                                            .padding(.leading)
                                        Spacer( )
                                    }.offset(x: -15)
                                    .padding(.bottom, 105)
                                  
                                }
                                }
                            .frame(width: 90, height: 90)
                            }
                            VStack{
                                Text("Add a caption...")
                                    .foregroundStyle(.gray)
                                    .fontWeight(.semibold)
                                    .padding(.top, 5)
                                Text("see Comments")
                                    .foregroundStyle(.blue)
                                    .font(.callout)
                                    .padding(5)
                                
                                HStack{
                                    Text("Ozark, MO  ●  just recently")
                                        .foregroundStyle(.gray)
                                }
                                
                            }
                        ForEach(1..<9) { _ in
                            FeedCell()
                        }
                        }
                    .padding(.top, 80)
                    }
                }
            
            
            
                    VStack {
                        VStack{
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 7)
                                        .fill(Color.orange)
                                        .frame(width: 58, height: 58)
                                    Image(systemName: "atom")
                                        .foregroundStyle(.gray)
                                        .font(.largeTitle)
                                        .fontWeight(.light)
                                    VStack{
                                        Image("logo")
                                            .resizable()
                                            .frame(width: 57, height: 57)
                                            .clipShape(RoundedRectangle.init(cornerRadius: 12))
                                    }.padding(.horizontal, 4)
                                }.padding(.horizontal, 4)
                                Spacer( )
                                ///TODO:  Animate Logo on Appearance
                                Image(systemName: "bolt.horizontal")
                                    .foregroundStyle(.blue)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .offset(x: 17)
                                Text("Blue")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.gray)
                                    .offset(x: 8, y: 1)
                                Text("Arc")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.primary)
                                
                                Spacer( )
                                Image(systemName: "plus")
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .foregroundStyle(.primary)
                                
                            }
                            .padding(.trailing, 10)
                            Spacer()///header:  pushes header to top
                        }
                    }
                }
            }
        }
    
#Preview {
    FeedView()
}
