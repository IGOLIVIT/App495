//
//  AddCourse.swift
//  App495
//
//  Created by IGOR on 26/04/2024.
//

import SwiftUI

struct AddCourse: View {

    @StateObject var viewModel: CoursesViewModel
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
                    
                    LazyVStack {
                        
                        HStack {
                            
                            Text("Course Basics")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Spacer()
                            
                            Text("1/3")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 15, weight: .medium))
                                .padding(8)
                                .padding(.horizontal)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.white.opacity(0.2)))
                        }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Title")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.coTitle.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.coTitle)
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
                        
                        Menu(content: {
                            
                            ForEach(viewModel.images, id: \.self) { index in
                                
                                Button(action: {
                                    
                                    viewModel.currentImage = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                    
                                })
                            }
                            
                        }, label: {
                            
                            if viewModel.currentImage.isEmpty {
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    Text("Logo")
                                        .foregroundColor(.white.opacity(0.6))
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    HStack {
                                        
                                        Text("Example")
                                            .foregroundColor(.white)
                                            .font(.system(size: 14, weight: .regular))
                                        
                                        Spacer()
                                        
                                        Image(systemName: "paperclip")
                                            .foregroundColor(.white.opacity(0.6))
                                            .font(.system(size: 17, weight: .regular))
                                        
                                    }
                                    .frame(height: 20)
                                }
                                
                            } else {
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    Text("Logo")
                                        .foregroundColor(.white.opacity(0.6))
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    HStack {
                                        
                                        Text(viewModel.currentImage)
                                            .foregroundColor(.white)
                                            .font(.system(size: 14, weight: .regular))
                                        
                                        Spacer()
                                        
                                        Image(systemName: "paperclip")
                                            .foregroundColor(.white.opacity(0.6))
                                            .font(.system(size: 17, weight: .regular))
                                        
                                    }
                                    .frame(height: 20)
                                }
                            }
                        })
                        
                        Rectangle()
                            .fill(.gray.opacity(0.4))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Thumbnail")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.coThumbnail.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.coThumbnail)
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
                        
                        Text("Category")
                            .foregroundColor(.white.opacity(0.6))
                            .font(.system(size: 14, weight: .regular))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Example")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.coCategory.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.coCategory)
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .semibold))
                            
                        })
                        .frame(maxWidth: .infinity)
                        .frame(height: 20)
                        
                        Rectangle()
                            .fill(.gray.opacity(0.4))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Brief description")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.coDescription.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.coDescription)
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
                        
                        HStack {
                            
                            Text("Detailed Course Content")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Spacer()
                            
                            Text("2/3")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 15, weight: .medium))
                                .padding(8)
                                .padding(.horizontal)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.white.opacity(0.2)))
                        }
                        .padding(.vertical)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Detailed description")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.coDetailedDescr.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.coDetailedDescr)
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
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Course parts")
                                .foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 14, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Example")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.coParts.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.coParts)
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
                        
                        HStack {
                            
                            Text("Pricing")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Spacer()
                            
                            Text("3/3")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 15, weight: .medium))
                                .padding(8)
                                .padding(.horizontal)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.white.opacity(0.2)))
                        }
                        .padding(.vertical)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Standard Price")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Example")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.coSPrice.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.coSPrice)
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
                                
                                Text("Certification Fee")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Example")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.coCertification.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.coCertification)
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
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Student Discounts")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Example")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.coStedDiscounts.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.coStedDiscounts)
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
                                
                                Text("Referral Discounts")
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.system(size: 14, weight: .regular))
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Example")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.coRefDiscounts.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.coRefDiscounts)
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
                }
                }
                
                Button(action: {
                    
                    viewModel.coSelectedImage = viewModel.currentImage
                    
                    viewModel.addCourse()
                    
                    viewModel.coTitle = ""
                    viewModel.coThumbnail = ""
                    viewModel.coCategory = ""
                    viewModel.coDescription = ""
                    viewModel.coDetailedDescr = ""
                    viewModel.coParts = ""
                    viewModel.coSPrice = ""
                    viewModel.coCertification = ""
                    viewModel.coStedDiscounts = ""
                    viewModel.coRefDiscounts = ""
                    viewModel.fetchCourses()
                    
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
                .opacity(viewModel.coTitle.isEmpty || viewModel.currentImage.isEmpty || viewModel.coThumbnail.isEmpty || viewModel.coCategory.isEmpty || viewModel.coDescription.isEmpty || viewModel.coDetailedDescr.isEmpty || viewModel.coParts.isEmpty || viewModel.coSPrice.isEmpty || viewModel.coCertification.isEmpty || viewModel.coStedDiscounts.isEmpty || viewModel.coRefDiscounts.isEmpty ? 0.5 : 1)
                .disabled(viewModel.coTitle.isEmpty || viewModel.currentImage.isEmpty || viewModel.coThumbnail.isEmpty || viewModel.coCategory.isEmpty || viewModel.coDescription.isEmpty || viewModel.coDetailedDescr.isEmpty || viewModel.coParts.isEmpty || viewModel.coSPrice.isEmpty || viewModel.coCertification.isEmpty || viewModel.coStedDiscounts.isEmpty || viewModel.coRefDiscounts.isEmpty ? true : false)
                .padding(.vertical)
            }
            .padding()

        }
    }
}

#Preview {
    AddCourse(viewModel: CoursesViewModel())
}
