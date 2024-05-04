//
//  GraphView.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct GraphView: View {

    @StateObject var viewModel: HomeViewModel
    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color("bg3")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("\(viewModel.currentCurrency)")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold))
                    
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
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        
                        Text("Currency value")
                            .foregroundColor(.black)
                            .font(.system(size: 11, weight: .regular))
                        
                        Spacer()
                        
                        HStack {
                            
                            Text("$\(String(format: "%.f", Double(.random(in: 1...9))))\(String(format: "%.f", Double(.random(in: 1...9)))).\(String(format: "%.f", Double(.random(in: 1...9))))\(String(format: "%.f", Double(.random(in: 1...9))))")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .semibold))
                                                
                            Text("+$\(String(format: "%.f", Double(.random(in: 1...9))))\(String(format: "%.f", Double(.random(in: 1...9)))).\(String(format: "%.f", Double(.random(in: 1...9))))\(String(format: "%.f", Double(.random(in: 1...9))))%")
                                .foregroundColor(Color.black)
                                .font(.system(size: 12, weight: .medium))
                            
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 70)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                    
                    VStack {
                        
                        HStack {
                            
                            Text("\(viewModel.pair)")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("+\(String(format: "%.f", Double(.random(in: 0...4)))).\(String(format: "%.f", Double(.random(in: 1...9))))\(String(format: "%.f", Double(.random(in: 1...9))))%")
                                .foregroundColor(.green)
                                .font(.system(size: 10, weight: .regular))
                                .padding(.vertical, 3)
                                .padding(.horizontal, 6)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.white.opacity(0.2)))
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 70)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                }
                                                
                Image("graph")
                    .resizable()
                    .padding(.bottom, 30)
                
                HStack {
                    
                    Button(action: {
                        
                        viewModel.pair = viewModel.currentCurrency
      
                            viewModel.isGraph = false

                            viewModel.isCurrencies = false
                            
                    }, label: {
                        
                        Text("Apply")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("prim")))
                    })
                    
                    Button(action: {
                        
                        router.wrappedValue.dismiss()
                        
                    }, label: {
                        
                        Text("Close")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.red))
                    })
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GraphView(viewModel: HomeViewModel())
}
