//
//  U1.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct U1: View {
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Image("U1")
                    .resizable()
                    .ignoresSafeArea()

            }
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Increase your income")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .bold))
                    
                    Text("Make the right contribution to your future")
                        .foregroundColor(.gray)
                        .font(.system(size: 16, weight: .regular))
                        .frame(width: 250)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        Reviewas()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Text("Next")
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
        }
    }
}

#Preview {
    U1()
}
