//
//  CurrenciesView.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct CurrenciesView: View {

    @StateObject var viewModel: HomeViewModel
    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("New expenses")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .semibold))
                    
                    Button(action: {
                        
                        router.wrappedValue.dismiss()
                        
                    }, label: {
                        
                        HStack {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 18, weight: .semibold))
                            
                            Text("Back")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 16, weight: .semibold))
                            
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .leading)

                }
                .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15, content: {
                        
                        ForEach(viewModel.currencies, id: \.self) { index in
                        
                            Button(action: {
                                
                                viewModel.currentCurrency = index
                                
                                withAnimation(.spring()) {
                                    
                                    viewModel.isGraph = true
                                }
                                
                            }, label: {
                                
                                VStack(spacing: 12) {
                                                                            
                                        Text(index)
                                            .foregroundColor(.white)
                                            .font(.system(size: 18, weight: .semibold))
                                            
                                            HStack {
                                                
                                                Text("\(String(format: "%.f", Double(.random(in: 1...4))))\(String(format: "%.f", Double(.random(in: 1...9)))).\(String(format: "%.f", Double(.random(in: 1...9))))\(String(format: "%.f", Double(.random(in: 1...9))))")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 16, weight: .semibold))
                                                
                                                Text("+$\(String(format: "%.f", Double(.random(in: 0...4)))).\(String(format: "%.f", Double(.random(in: 1...9))))\(String(format: "%.f", Double(.random(in: 1...9))))")
                                                    .foregroundColor(.green)
                                                    .font(.system(size: 11, weight: .regular))
    
                                            }

                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg3")))
                            })
                        }
                    })
                }
                
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.isGraph, content: {
            
            GraphView(viewModel: viewModel)
        })
    }
}

#Preview {
    CurrenciesView(viewModel: HomeViewModel())
}
