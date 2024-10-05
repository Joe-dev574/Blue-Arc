//
//  FeedCell.swift
//  Blue Arc
//
//  Created by Joseph DeWeese on 10/5/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        ZStack {
            Color.back.ignoresSafeArea()
            //MARK: Profile pic  / Main Pic / Comment stack
                    VStack {
                        Image("weldpic")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle.init(cornerRadius: 7))
                         
                        Text("Comment...")
                            .foregroundStyle(.gray)
                            .fontDesign(.serif)
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                    }
            //MARK: Username / Location / Time
                    VStack {
                      
                        ZStack{
                            VStack{
                                HStack{
                                    Text("@WeldTactics")
                                        .fontDesign(.serif)
                                        .font(.system(size: 18))
                                        .foregroundStyle(.white)
                                        .shadow(color: .black, radius: 5, x: 4, y: 4)
                                    Text("●  Ozark, Mo ● 7 hr. late")
                                        .fontDesign(.serif)
                                        .font(.system(size: 18))
                                        .foregroundStyle(.white)
                                        .shadow(color: .black, radius: 5, x: 4, y: 4)
                                }.padding(.horizontal, 2)
                                //MARK: Weld Profile Pic
                                ZStack{
                                    VStack(alignment: .leading){
                                        HStack{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 7)
                                                    .fill(Color.orange)
                                                    .frame(width: 112, height: 124)
                                                Image("logo")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .clipShape(RoundedRectangle(cornerRadius: 7))
                                                    .frame(width: 110, height: 122)
                                            }.zIndex(1)
                                            Spacer( )
                                        }
                                        ZStack{
                                            
                                            VStack(alignment: .trailing) {
                                            //MARK:  Comment and Thumbs up Icons
                                                Spacer()
                                                HStack{
                                                    Spacer( )
                                                    VStack {
                                                        Image(systemName: "bubble.fill")
                                                            .foregroundStyle(.white)
                                                            .font(.system(size: 30))
                                                            .shadow(color: .blue, radius: 4, x: 2, y: 2)
                                                            .padding(.bottom,5)
                                                        Image(systemName: "hand.thumbsup.fill")
                                                            .foregroundStyle(.white)
                                                            .font(.system(size: 30))
                                                            .shadow(color: .blue, radius: 4, x: 2, y: 2)
                                                    }
                                                    .padding(.bottom, 60).padding(.horizontal, 4)
                                                }
                                            }
                                        }
                                    }
                                }
                                Spacer( )
                            }.frame(width: UIScreen.main.bounds.width, height: 670)
                        }
                    }
                }
            }
        }
#Preview {
    FeedCell()
}
