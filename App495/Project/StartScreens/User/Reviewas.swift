//
//  Reviewas.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI
import StoreKit

struct Reviewas: View {
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Image("Reviews")
                    .resizable()
                    .ignoresSafeArea()

            }
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Rate our app in the AppStore")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .bold))
                    
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
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    Reviewas()
}
