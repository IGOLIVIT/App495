//
//  SettingsView.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text("Settings")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isReset = true
                        }
                        
                    }, label: {
                        
                        Text("Reset progress")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                            .padding(9)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color("prim")))
                    })
                }
                .padding(.bottom)
                
                VStack(spacing: 15) {
                    
                    HStack {
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://docs.google.com/document/d/1Yl4KNLePPSbGSfxS_IcjXQMNIK2Q_rKobb_ljb3Ec1M/edit?usp=sharing") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            Text("Usage Policy")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                        })
                     
                        Spacer()
                    }
                    
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.3))
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                    
                    HStack {
                        
                        Button(action: {
                            
                            SKStoreReviewController.requestReview()
                            
                        }, label: {
                            
                            Text("Rate Us")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                        })
                     
                        Spacer()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg3")))

                Spacer()
            }
            .padding()
        }
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isReset ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isReset = false
                        }
                    }
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isReset = false
                            }
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        })
                    }
                    
                    Text("Reset progress")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()
                    
                    Text("Are you sure you want to reset progress?")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        
                        viewModel.pair = ""
                        viewModel.summ = 0
                        viewModel.TCC = ""
                        viewModel.TE = ""
                        viewModel.TP = ""
                        viewModel.TCS = ""
                        
                        CoreDataStack.shared.deleteAllData()
          
                        withAnimation(.spring()) {
                            
                            viewModel.isReset = false
                            
                        }
                                
                    }, label: {
                        
                        Text("Reset")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                        
                    })
                    .padding(.top, 25)
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isReset = false
                        }
                        
                    }, label: {
                        
                        Text("Close")
                            .foregroundColor(.red)
                            .font(.system(size: 18, weight: .regular))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                        
                    })
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg3")))
                .padding()
                .offset(y: viewModel.isReset ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    SettingsView()
}
