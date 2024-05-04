//
//  CoursesDetail.swift
//  App495
//
//  Created by IGOR on 03/05/2024.
//

import SwiftUI

struct CoursesDetail: View {
    
    @StateObject var viewModel: CoursesViewModel
    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Course")
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
                    
                    LazyVStack(spacing: 14) {
                        
                        HStack {
                            
                            Image(viewModel.selectedCourse?.coSelectedImage ?? "")
                            
                            Text(viewModel.selectedCourse?.coTitle ?? "")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                            
                            
                        }
                        
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 14) {
                                
                                HStack {
                                    
                                    Image(systemName: "bag.badge.plus")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.black))
                                    
                                    Text("Times sold")
                                        .foregroundColor(.black)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                    Spacer()
                                }
                                
                                Text("\(String(format: "%.f", Double(.random(in: 0...90))))")
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .semibold))
                                
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(RoundedRectangle(cornerRadius: 25.0).fill(.white))
                            
                            VStack(alignment: .leading, spacing: 14) {
                                
                                HStack {
                                    
                                    Image(systemName: "person.2.fill")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(Color("prim")))
                                    
                                    Text("Times sold")
                                        .foregroundColor(.white)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                    Spacer()
                                }
                                
                                Text("\(String(format: "%.f", Double(.random(in: 0...90))))")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(RoundedRectangle(cornerRadius: 25.0).fill(Color("bg2")))
                        }
                        
                        Text("Overeview")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Title")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coTitle ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }

                            Rectangle()
                                .fill(.gray.opacity(0.4))
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Thumbnail")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coThumbnail ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))

                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Category")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coCategory ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }

                            Rectangle()
                                .fill(.gray.opacity(0.4))
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Brief description")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coDescription ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Detailed description")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coDetailedDescr ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }

                            Rectangle()
                                .fill(.gray.opacity(0.4))
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Course parts")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coParts ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Standard Price")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coSPrice ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }

                            Rectangle()
                                .fill(.gray.opacity(0.4))
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Certification Fee")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coCertification ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Student Discounts")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coStedDiscounts ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }

                            Rectangle()
                                .fill(.gray.opacity(0.4))
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Referral Discounts")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))

                                Text(viewModel.selectedCourse?.coRefDiscounts ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                .frame(height: 20)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))

                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    CoursesDetail(viewModel: CoursesViewModel())
}
