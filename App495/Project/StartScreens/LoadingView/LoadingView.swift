//
//  LoadingView.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
    
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Image("llogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            VStack {
                
                Spacer()
                
                ProgressView()
                    .padding()
            }
        }
    }
}

#Preview {
    LoadingView()
}
