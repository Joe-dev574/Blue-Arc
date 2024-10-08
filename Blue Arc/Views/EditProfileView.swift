//
//  EditProfileView.swift
//  Blue Arc
//
//  Created by Joseph DeWeese on 10/7/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio: String = ""
    var body: some View {
        VStack(alignment: .center){
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .ignoresSafeArea()
                    .foregroundColor(.clear)
                NavigationStack{
                    ScrollView(showsIndicators: false){
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 7)
                                    .fill(.arc)
                                    .padding()
                                    .frame(width: 140, height: 140)
                                    .shadow(color: .primary, radius: 5)
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 7))
                                    .frame(width: 100, height: 100)
                                VStack{
                                Button {
                                    HapticManager.notification(type: .success)
                                    print("upload image")
                                } label: {
                                    VStack {
                                        ZStack{
                                            Circle()
                                                .fill(.black)
                                                .frame(width: 34, height: 40)
                                                .shadow(color: .primary, radius: 3)
                                            Circle()
                                                .fill(.white)
                                                .frame(width: 30, height: 30)
                                            Image(systemName: "camera.fill")
                                                .font(.title3)
                                                .foregroundColor(.black)
                                            
                                        }
                                    }
                                }.offset(x: 60, y: 50)
                                }
                            }
                        }.padding(.top, -20)
                        
                        VStack(alignment: .center){
                            Text("My Bio")
                                .padding(.horizontal,2)
                            TextEditor(text: $bio)
                                .frame(width: 350, height: 100)
                                .padding(.horizontal,2)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(uiColor: .tertiarySystemFill), lineWidth: 3))
                                .shadow(color: .primary, radius: 4)
                            
                            Text("First Name")
                                .padding(.horizontal,2)
                            TextField("Enter First Name", text: .constant(""))
                                .padding(.horizontal,2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .shadow(color: .primary, radius: 4)
                            Text("Last Name")
                                .padding(.horizontal,2)
                            TextField("Enter Last Name", text: .constant(""))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal,2)
                                .shadow(color: .primary, radius: 4)
                            Text("Email")
                                .padding(.horizontal,2)
                            TextField("Enter Email", text: .constant(""))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal,2)
                                .shadow(color: .primary, radius: 4)
                            Text("UserName")
                                .padding(.horizontal,2)
                            TextField("Enter UserName", text: .constant(""))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal,2)
                                .shadow(color: .primary, radius: 4)
                            Text("Location")
                                .padding(.horizontal,2)
                            TextField("📍 Location", text: .constant(""))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal,2)
                                .shadow(color: .primary, radius: 4)
                            Spacer( )
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.9)
                        .padding(.vertical,5)
                        .toolbar{
                            ToolbarItem(placement: .navigationBarLeading, content: {
                                Text("Cancel")
                            })
                            ToolbarItem(placement: .principal, content: {
                                HeaderView()
                            } )
                            ToolbarItem(placement:.navigationBarTrailing,content:{
                                
                                Button{
                                    HapticManager.notification(type: .success)
                                } label: {
                                    
                                    Text("Save")
                                }
                                .padding(.horizontal, 2)
                                .buttonStyle(BorderedProminentButtonStyle())
                                .disabled(true)
                            })
                        }
                    }
                    Spacer( )
                }
            }
        }
    }
}
#Preview {
    EditProfileView()
}
