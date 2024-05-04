//
//  R1.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct R1: View {
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Image("R1")
                    .resizable()
                    .ignoresSafeArea()

            }
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Dashboard")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .bold))
                    
                    Text("Keep all data about your online courses in one place!")
                        .foregroundColor(.gray)
                        .font(.system(size: 16, weight: .regular))
                        .frame(width: 250)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        R2()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Text("Next")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .regular))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color("prim")))
                    })
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 200)
            }
            .padding()
        }
    }
}

#Preview {
    R1()
}
