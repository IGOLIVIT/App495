//
//  ContentView.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var current_tab: Tab = Tab.Home

    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()

                    if status {
                        
                        VStack(spacing: 0, content: {
                            
                            TabView(selection: $current_tab, content: {
                                
                                HomeView()
                                    .tag(Tab.Home)
                                
                                CoursesView()
                                    .tag(Tab.Courses)
                                
                                SettingsView()
                                    .tag(Tab.Settings)
                                
                            })
                            
                        })
                        .ignoresSafeArea(.all, edges: .bottom)
                        
                        VStack {
                            
                            Spacer()
                            
                            TabBar(selectedTab: $current_tab)

                        }
                        .padding()

                        
                    } else {
                        
                        R1()
                    }

        }

    }
}

#Preview {
    ContentView()
}
