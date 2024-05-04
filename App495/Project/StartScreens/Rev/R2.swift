//
//  R2.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct R2: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Image("R2")
                    .resizable()
                    .ignoresSafeArea()

            }
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Course creation")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .bold))
                    
                    Text("Add and create your online courses in our editor!")
                        .foregroundColor(.gray)
                        .font(.system(size: 16, weight: .regular))
                        .frame(width: 300)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        status = true
                        
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
    R2()
}
