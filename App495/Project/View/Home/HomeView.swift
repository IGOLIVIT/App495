//
//  HomeView.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text("Dashboard")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isCurrencies = true
                        }
                        
                    }, label: {
                        
                        HStack {
                            
                            Text(viewModel.pair.isEmpty ? "USD" : viewModel.pair)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                        }
                        .padding(9)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("prim")))
                    })
                }
                .padding(.bottom)
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTCC = true
                        }
                        
                    }, label: {
                        
                        VStack {
                            
                            Image(systemName: "lightbulb.min")
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                                .padding(8)
                                .background(Circle().fill(Color("prim")))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            HStack {
                                
                                Spacer()
                                
                                Text("\(viewModel.TCC)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24, weight: .semibold))
                             
                                Text("created")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 13, weight: .semibold))
                            }
                            
                            Spacer()
                            
                            Text("Total Courses Created")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .semibold))
                                .frame(width: 100)
                                .frame(maxWidth: .infinity, alignment: .leading)

                        }
                        .padding(9)
                        .frame(maxWidth: .infinity)
                        .frame(height: 140)
                        .background(RoundedRectangle(cornerRadius: 25.0).fill(Color("bg2")))
                    })
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTE = true
                        }
                        
                    }, label: {
                        
                        VStack {
                            
                            Image(systemName: "dollarsign.arrow.circlepath")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .padding(8)
                                .background(Circle().fill(Color("bg2")))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                            Spacer()
                            
                            HStack {
                                                            
                                Text("$\(viewModel.TE)")
                                    .foregroundColor(.black)
                                    .font(.system(size: 24, weight: .semibold))

                                Spacer()

                            }
                            
                            Spacer()
                            
                            Text("Total expenses")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .semibold))
                                .frame(width: 100)
                                .frame(maxWidth: .infinity, alignment: .leading)

                        }
                        .padding(9)
                        .frame(maxWidth: .infinity)
                        .frame(height: 140)
                        .background(RoundedRectangle(cornerRadius: 25.0).fill(Color.white))
                    })
                }
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTP = true
                        }
                        
                    }, label: {
                        
                        VStack {
                            
                            Image(systemName: "arrow.up.forward")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .padding(8)
                                .background(Circle().fill(Color("bg2")))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                            Spacer()
                            
                            HStack {
                                                            
                                Text("$\(viewModel.TP)")
                                    .foregroundColor(.black)
                                    .font(.system(size: 24, weight: .semibold))

                                Spacer()

                            }
                            
                            Spacer()
                            
                            Text("Total profit")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .semibold))
                                .frame(width: 100)
                                .frame(maxWidth: .infinity, alignment: .leading)

                        }
                        .padding(9)
                        .frame(maxWidth: .infinity)
                        .frame(height: 140)
                        .background(RoundedRectangle(cornerRadius: 25.0).fill(Color("prim")))
                    })
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTCS = true
                        }
                        
                    }, label: {
                        
                        VStack {
                            
                            Image(systemName: "bag.badge.plus")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .padding(8)
                                .background(Circle().fill(Color("bg2")))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            HStack {
                                
                                Spacer()
                                
                                Text("\(viewModel.TCS)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24, weight: .semibold))
                             
                                Text("created")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 13, weight: .semibold))
                            }
                            
                            Spacer()
                            
                            Text("Total Courses Sold")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .semibold))
                                .frame(width: 100)
                                .frame(maxWidth: .infinity, alignment: .leading)

                        }
                        .padding(9)
                        .frame(maxWidth: .infinity)
                        .frame(height: 140)
                        .background(RoundedRectangle(cornerRadius: 25.0).fill(Color("bg3")))
                    })
                }
                
                HStack {
                    
                    Text("Transactions")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = true
                        }
                        
                    }, label: {

                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                                .padding(6)
                                .background(Circle().fill(Color("bg2")))

                    })
                }
                .padding(.vertical)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        ForEach(viewModel.transactions, id: \.self) { index in
                        
                            HStack {
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    Text(index.transSubtitle ?? "")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Text(index.transTitle ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .semibold))
                                }
                                
                                Spacer()
                                
                                Text("\(index.transAmount ?? "")$")
                                    .foregroundColor(.green)
                                    .font(.system(size: 18, weight: .medium))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                        }
                    }
                }
            }
            .padding()
        }
        .onAppear {
            
            viewModel.fetchTransactions()
        }
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isTCC ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTCC = false
                        }
                    }
                
                VStack {
                    
                    Text("Total courses created")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()

                    ZStack(alignment: .leading, content: {
                        
                        Text("Total courses created")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(viewModel.TCC1.isEmpty ? 1 : 0)
                        
                        TextField("", text: $viewModel.TCC1)
                            .foregroundColor(Color.black)
                            .font(.system(size: 16, weight: .semibold))

                    })
                    .padding(7)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 2).fill(.white))
                    
                    HStack {
                        
                        Button(action: {
  
                            withAnimation(.spring()) {
                                
                                viewModel.isTCC = false
                                
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.red)
                                .font(.system(size: 18, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                        
                        Button(action: {
                            
                            viewModel.TCC = viewModel.TCC1
                            
                            viewModel.TCC1 = ""
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isTCC = false
                            }
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(.blue)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                    }
                }
                .frame(width: 300)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.7)))
                .padding()
                .offset(y: viewModel.isTCC ? 0 : UIScreen.main.bounds.height)
            }
        )
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isTE ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTE = false
                        }
                    }
                
                VStack {
                    
                    Text("Total expenses")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()

                    ZStack(alignment: .leading, content: {
                        
                        Text("Total expenses")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(viewModel.TE1.isEmpty ? 1 : 0)
                        
                        TextField("", text: $viewModel.TE1)
                            .foregroundColor(Color.black)
                            .font(.system(size: 16, weight: .semibold))

                    })
                    .padding(7)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 2).fill(.white))
                    
                    HStack {
                        
                        Button(action: {
  
                            withAnimation(.spring()) {
                                
                                viewModel.isTE = false
                                
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.red)
                                .font(.system(size: 18, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                        
                        Button(action: {
                            
                            viewModel.TE = viewModel.TE1
                            
                            viewModel.TE1 = ""
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isTE = false
                            }
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(.blue)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                    }
                }
                .frame(width: 300)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.7)))
                .padding()
                .offset(y: viewModel.isTE ? 0 : UIScreen.main.bounds.height)
            }
        )
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isTCS ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTCS = false
                        }
                    }
                
                VStack {

                    Text("Total courses sold")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()

                    ZStack(alignment: .leading, content: {
                        
                        Text("Total courses sold")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(viewModel.TCS1.isEmpty ? 1 : 0)
                        
                        TextField("", text: $viewModel.TCS1)
                            .foregroundColor(Color.black)
                            .font(.system(size: 16, weight: .semibold))

                    })
                    .padding(7)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 2).fill(.white))
                    
                    HStack {
                        
                        Button(action: {
  
                            withAnimation(.spring()) {
                                
                                viewModel.isTCS = false
                                
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.red)
                                .font(.system(size: 18, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                        
                        Button(action: {
                            
                            viewModel.TCS = viewModel.TCS1
                            
                            viewModel.TCS1 = ""
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isTCS = false
                            }
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(.blue)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                    }
                }
                .frame(width: 300)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.7)))
                .padding()
                .offset(y: viewModel.isTCS ? 0 : UIScreen.main.bounds.height)
            }
        )
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isTP ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTP = false
                        }
                    }
                
                VStack {

                    Text("Total profit")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()

                    ZStack(alignment: .leading, content: {
                        
                        Text("Total profit")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .opacity(viewModel.TP1.isEmpty ? 1 : 0)
                        
                        TextField("", text: $viewModel.TP1)
                            .foregroundColor(Color.black)
                            .font(.system(size: 16, weight: .semibold))

                    })
                    .padding(7)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 2).fill(.white))
                    
                    HStack {
                        
                        Button(action: {
  
                            withAnimation(.spring()) {
                                
                                viewModel.isTP = false
                                
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.red)
                                .font(.system(size: 18, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                        
                        Button(action: {
                            
                            viewModel.TP = viewModel.TP1
                            
                            viewModel.TP1 = ""
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isTP = false
                            }
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(.blue)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                    }
                }
                .frame(width: 300)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.7)))
                .padding()
                .offset(y: viewModel.isTP ? 0 : UIScreen.main.bounds.height)
            }
        )
        .sheet(isPresented: $viewModel.isCurrencies, content: {
            
            CurrenciesView(viewModel: viewModel)
        })
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddTransaction(viewModel: viewModel)
        })
    }
}

#Preview {
    HomeView()
}
