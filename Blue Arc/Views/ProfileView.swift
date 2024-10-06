//
//  ProfileView.swift
//  Blue Arc
//
//  Created by Joseph DeWeese on 10/6/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.back.ignoresSafeArea()
            //MARK:  HEADER
            VStack {
                HStack {
                    Image(systemName: "arrow.left.square")
                        .foregroundStyle(.white)
                        .padding(.leading, 17)
                    Spacer( )
                    
                    Text("My Profile")
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundStyle(.gray)
                    Spacer( )
                    Image(systemName: "smallcircle.filled.circle")
                        .foregroundStyle(.white)
                        .padding(.trailing, 17)
                }.padding(.horizontal)
                
                ZStack{
                    //MARK:  PROFILE PIC
                    RoundedRectangle(cornerRadius: 7)
                        .fill( .white)
                        .frame(width: 125, height: 125 )
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120 )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }.padding(.top, 25)
                //MARK: NAME/USERNAME AND TITLE HEADER
                Text("@WeldTactics")
                    .foregroundStyle(.blue)
                    .fontWeight(.bold)
                    .fontDesign(.serif)
                Text("Joseph W. DeWeese")
                    .foregroundStyle(.white)
                    .fontDesign(.serif)
                Text("Weld Engineer")
                    .foregroundStyle(.orange)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                HStack(alignment: .center) {
                    //MARK:  FOLLOWERS / FOLLOWING
                    VStack{
                        Text("Followers")
                            .foregroundStyle(.white)
                            .fontDesign(.serif)
                            .padding(.top, 4)
                        Text("2756")
                            .foregroundStyle(.gray)
                            .fontDesign(.serif)
                    }.padding(.horizontal)
                    VStack{
                        Text("Following")
                            .foregroundStyle(.white)
                            .fontDesign(.serif)
                            .padding(.top, 4)
                        Text("3716")
                            .foregroundStyle(.gray)
                            .fontDesign(.serif)
                    }.padding(.horizontal)
                }.padding(.top, 10)
                Divider().foregroundStyle(.gray)
                    .padding(2)
                
                
                //  MARK:  COLLECTION PICS
                VStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.white)
                            .opacity(0.07)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                            .frame(height: 350)
                        
                        VStack{
                            VStack(alignment: .leading){
                                HStack{
                                    Spacer( )
                                    Text("Collections")
                                        .foregroundStyle(.white)
                                        .fontDesign(.serif)
                                        .padding(.leading, 10)
                                    Spacer( )
                                    Image(systemName: "lock.fill")
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 12))
                                        .fontDesign(.serif)
                                    
                                    Text("Only Visible to You")
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 12))
                                        .fontDesign(.serif)
                                    Spacer( )
                                }
                            }
                            
                            HStack(spacing: 7) {
                                ForEach(1..<7){ x in
                                    CollectionView(day: x)
                                }
                            } .padding(.horizontal, 25)
                            HStack(spacing: 7) {
                                ForEach(1..<7){ x in
                                    CollectionView(day: x + 6)
                                }
                            }.padding(.top, -10)
                                .padding(.horizontal, 25)
                            HStack(spacing: 7) {
                                ForEach(1..<7){ x in
                                    CollectionView(day: x + 12)
                                }
                            }.padding(.top, -10)
                                .padding(.horizontal, 25)
                            
                            //  MARK:  SEE COLLECTION BUTTON
                            Button{
                                
                            } label: {
                                VStack {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.blue)
                                            .frame(width: 160 , height: 40)
                                        Text("View Picture Vault")
                                            .foregroundStyle(.white)
                                            .fontDesign(.serif)
                                            .font(.system(size: 16))
                                            .fontWeight(.bold)
                                            .padding()
                                       
                                    }
                                }
                            }
                        }
                    }.padding(.horizontal)
                }.padding(.top, -10)
                Spacer()
            }.padding(.horizontal)
               
        }
    }
}

#Preview {
    ProfileView()
}
