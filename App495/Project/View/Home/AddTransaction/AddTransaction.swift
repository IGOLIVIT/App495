//
//  AddTransaction.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct AddTransaction: View {

    @StateObject var viewModel: HomeViewModel
    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {

                ZStack {
                    
                    Text("Add transaction")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 18, weight: .medium))
                            
                            Text("Back")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 16, weight: .medium))
                            
                        })
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Title")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.transTitle.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.transTitle)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                            })
                            .frame(maxWidth: .infinity)
                            .frame(height: 20)
                        }
             
                        Rectangle()
                            .fill(.gray.opacity(0.4))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Subtitle")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.transSubtitle.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.transSubtitle)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                            })
                            .frame(maxWidth: .infinity)
                            .frame(height: 20)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                    .padding(1)

                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Amount")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.transAmount.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.transAmount)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                            })
                            .frame(maxWidth: .infinity)
                            .frame(height: 20)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                        .padding(1)
                    
                }
                
                Button(action: {
                                    
                    viewModel.addTransaction()
                    
                    viewModel.transTitle = ""
                    viewModel.transSubtitle = ""
                    viewModel.transAmount = ""
                    
                    viewModel.fetchTransactions()
                    
                    withAnimation(.spring()) {
                        
                        router.wrappedValue.dismiss()
                    }
                    
                }, label: {
                    
                    Text("Add")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 25).fill(Color("prim")))
                })
                .opacity(viewModel.transTitle.isEmpty || viewModel.transSubtitle.isEmpty || viewModel.transAmount.isEmpty ? 0.5 : 1)
                .disabled(viewModel.transTitle.isEmpty || viewModel.transSubtitle.isEmpty || viewModel.transAmount.isEmpty ? true : false)
                .padding(.vertical)
            }
            .padding()
        }
    }
}

#Preview {
    AddTransaction(viewModel: HomeViewModel())
}
