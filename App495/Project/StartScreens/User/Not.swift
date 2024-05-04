//
//  Not.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct Not: View {
    
    @AppStorage("status") var status: Bool = false

    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Image("Not")
                    .resizable()
                    .ignoresSafeArea()

            }
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Do not miss anything")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .bold))
                    
                    Text("Turn on notifications and keep your trade online!")
                        .foregroundColor(.gray)
                        .font(.system(size: 16, weight: .regular))
                        .frame(width: 250)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        
                    }, label: {
                        
                        Text("Enable notifications")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .regular))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color("prim")))
                    })
                    .padding(.bottom, 30)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 250)
                .background(Color.black)
                
            }
            .ignoresSafeArea()
            
            VStack {
                
                Button(action: {
                    
                    status = true

                }, label: {
                    
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .font(.system(size: 13, weight: .regular))
                        .padding(6)
                        .background(Circle().fill(.white))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                })
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    Not()
}
