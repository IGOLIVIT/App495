//
//  CoursesView.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct CoursesView: View {
    
    @StateObject var viewModel = CoursesViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text("Your courses")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = true
                        }
                        
                    }, label: {
                        
                        Text("Add")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                            .padding(9)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color("prim")))
                    })
                }
                .padding(.bottom)
                
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                    
                    ZStack(alignment: .leading, content: {
                        
                        Text("Search")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(viewModel.search.isEmpty ? 1 : 0)
                        
                        TextField("", text: $viewModel.search)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                    })
                }
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                .padding(.vertical, 8)
                
                if viewModel.courses.isEmpty {
                    
                    VStack {
                        
                        Text("Create course")
                            .foregroundColor(.gray.opacity(0.4))
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 170)
                            .background(RoundedRectangle(cornerRadius: 25.0).stroke(.gray.opacity(0.3), lineWidth: 4))
                        
                        Spacer()
                    }
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(viewModel.fetchCoursesBySearch(), id: \.self) { index in
                                
                                Button(action: {
                                    
                                    viewModel.selectedCourse = index
                                    
                                    withAnimation(.spring()) {
                                        
                                        viewModel.isDetail = true
                                    }
                                    
                                }, label: {
                                    
                                    VStack {
                                        
                                        HStack {
                                                                                        
                                                Text(index.coTitle ?? "")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 18, weight: .semibold))
                                            
                                            Spacer()
                                            
                                            Image(index.coSelectedImage ?? "")
                                        }
                                        
                                        Text(index.coDescription ?? "")
                                            .foregroundColor(.black)
                                            .font(.system(size: 14, weight: .regular))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        HStack {
                                            
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.black)
                                                .font(.system(size: 12, weight: .regular))
                                            
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.black)
                                                .font(.system(size: 12, weight: .regular))

                                            Image(systemName: "star.fill")
                                                .foregroundColor(.black)
                                                .font(.system(size: 12, weight: .regular))

                                            Image(systemName: "star.fill")
                                                .foregroundColor(.black)
                                                .font(.system(size: 12, weight: .regular))

                                            Image(systemName: "star.fill")
                                                .foregroundColor(.black)
                                                .font(.system(size: 12, weight: .regular))

                                            Spacer()
                                            
                                            Text(index.coCategory ?? "")
                                                .foregroundColor(.black)
                                                .font(.system(size: 12, weight: .regular))
                                                .padding(4)
                                                .padding(.horizontal, 3)
                                                .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                                        }
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 25.0).fill(Color("prim")))
                                })
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddCourse(viewModel: viewModel)
        })
        .onAppear{
            
            viewModel.fetchCourses()
        }
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            CoursesDetail(viewModel: viewModel)
        })
    }
}

#Preview {
    CoursesView()
}
