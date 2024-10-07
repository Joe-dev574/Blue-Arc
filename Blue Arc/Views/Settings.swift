//
//  Settings.swift
//  Blue Arc
//
//  Created by Joseph DeWeese on 10/6/24.
//

import SwiftUI

struct Settings: View {
    @State var width = UIScreen.main.bounds.width * 0.15
    
    var body: some View {
        NavigationStack {
            
            
            VStack(alignment: .center, spacing: 0) {
                Form {
                    HStack{
                        ///profile icon
                        VStack{
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.blue.opacity(0.9))
                                    .frame(width: width, height: width)
                                    .cornerRadius(width / 2)
                                    .shadow(radius: width / 2)
                                Image(systemName: "person.crop.circle.fill")
                                    .font(.title)
                            }
                        }
                        ///name tile
                        VStack(alignment: .leading){
                            Text("@WeldTactics")
                                .font(.callout)
                                .fontWeight(.bold)
                                .fontDesign(.serif)
                                .foregroundColor(.white)
                                .padding(.bottom, 5)
                            Text("Profile, Account, and More")
                                .font(.callout)
                                .fontDesign(.serif)
                                .foregroundColor(.gray)
                        }.padding(.horizontal, 4)
                    }
                }
                Spacer( )
            }
            
            .navigationTitle("Settings⚙️")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: - SECTION 3
            
            Section(header: Text("Settings")) {
                FormRowLinkView(icon: "app.badge", color: Color.pink, text: "Notifications", link: "https://swiftuimasterclass.com")
                FormRowLinkView(icon: "globe.americas.fill", color: Color.blue, text: "Geography: Americas", link: "https://twitter.com/robertpetras")
                FormRowLinkView(icon: "play.rectangle", color: Color.green, text: "Courses", link: "https://www.udemy.com/user/robert-petras")
            } //: SECTION 3
            .padding(.vertical, 3)
            
            // MARK: - SECTION 4
            
            Section(header: Text("About BlueArc")) {
                FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
                FormRowStaticView(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iPhone, iPad")
                FormRowStaticView(icon: "keyboard", firstText: "Developer", secondText: "John / Jane")
                FormRowStaticView(icon: "paintbrush", firstText: "Designer", secondText: "Robert Petras")
                FormRowStaticView(icon: "flag", firstText: "Version", secondText: "1.5.0")
            } //: SECTION 4
            .padding(.vertical, 3)
        }
    //: FORM
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
            .navigationTitle("Settings ⚙️")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: - FOOTER
            
            Text("Copyright © All rights reserved.\nTrueNorthTactics")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .padding(.top, 6)
                .padding(.bottom, 8)
                .foregroundColor(Color.secondary)
        }
    }

#Preview {
    Settings()
}
