//
//  TabBar.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        
        HStack {
            
            ForEach(Tab.allCases, id: \.self) { index in
                
                Button(action: {
                    
                    selectedTab = index
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 8, content: {
                        
                        Image(index.rawValue)
                            .renderingMode(.template)
                            .foregroundColor(selectedTab == index ? Color(.black) : Color(.gray))
                            .padding(20)
                            .background(Circle().fill(selectedTab == index ? Color(.white) : Color("bg2")))
                            .padding(.vertical, 5)
                    })
                })
            }
        }
        .padding(.trailing)
        .padding(.leading)
        .padding(.top, 14)
        .padding(.bottom, 14)
        .background(RoundedRectangle(cornerRadius: 60).fill(Color("bg3")))
        .background(RoundedRectangle(cornerRadius: 60).stroke(Color("bg2")))

    }
}

enum Tab: String, CaseIterable {
    
    case Home = "Home"
    
    case Courses = "Courses"
    
    case Settings = "Settings"
                
}
