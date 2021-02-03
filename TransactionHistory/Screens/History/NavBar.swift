//
//  NavBar.swift
//  BankManager
//
//  Created by Admin on 1/31/21.
//  Copyright © 2021 rapid interactive. All rights reserved.
//

import SwiftUI

struct NavBar: View {
    
    @State private var searchInput: String = ""
    
    var body: some View {
        VStack {
//            Image("blueCard")
//                .resizable()
//                .scaledToFit()
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("MONDAY, 1 FEBRUARY")
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        .foregroundColor(Color(UIColor.systemGray2))
                        Text("History")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Image("tubosun")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                }
              
                HStack {
                    Group {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .foregroundColor(Color(UIColor.systemGray))
                    TextField("", text: $searchInput)
                    
                }
                .padding(.horizontal, 16)
                .frame(height: 36)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(UIColor.systemGray5))
                )
                
               
            }
            .padding([.top, .leading, .trailing])
            Divider()
        }
        .background(Color("navbarBackground"))
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
