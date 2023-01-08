//
//  test.swift
//  TaskStar
//
//  Created by amalghurm on 17/06/1444 AH.
//

import SwiftUI

struct test: View {
    @State private var selected: Bool = false
    @State private var display = false
    @State private var lock = 3
    var scoreON: Int = 200
    var body: some View {
        
        VStack{
          
            ScrollView(.horizontal){ HStack(spacing:30){
                        switch scoreON {
                        case _ where  scoreON > 99 :
                            Button(action: {selected=true}, label: {
                                
                                
                                Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            })
                   
                       
                        default:
                            Button(action: {selected=true}, label: {
                                
                                
                                Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))                                            .overlay(
                                        Rectangle()
                                            .fill(Color.black.opacity(0.5))
                                            .overlay(
                                                Image(systemName: "lock")
                                                    .resizable()
                                                    .frame(width: 36.0, height: 43.0)
                                                    .padding(.trailing,250)
                                                    .padding(.top,100)
                                            )
                                    )

                            }) .disabled(lock==3)
                        }
                switch scoreON {
                case _ where  scoreON > 199 :
                    Button(action: {selected=true}, label: {
                        
                        
                        Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
           
               
                default:
                    Button(action: {selected=true}, label: {
                        
                        
                        Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))                                            .overlay(
                                Rectangle()
                                    .fill(Color.black.opacity(0.5))
                                    .overlay(
                                        Image(systemName: "lock")
                                            .resizable()
                                            .frame(width: 36.0, height: 43.0)
                                            .padding(.trailing,250)
                                            .padding(.top,100)
                                    )
                            )

                    }) .disabled(lock==3)
                }
                switch scoreON {
                case _ where  scoreON > 299 :
                    Button(action: {selected=true}, label: {
                        
                        
                        Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
           
               
                default:
                    Button(action: {selected=true}, label: {
                        
                        
                        Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))                                            .overlay(
                                Rectangle()
                                    .fill(Color.black.opacity(0.5))
                                    .overlay(
                                        Image(systemName: "lock")
                                            .resizable()
                                            .frame(width: 36.0, height: 43.0)
                                            .padding(.trailing,250)
                                            .padding(.top,100)
                                    )
                            )

                    }) .disabled(lock==3)
                }
                switch scoreON {
                case _ where  scoreON > 399 :
                    Button(action: {selected=true}, label: {
                        
                        
                        Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
           
               
                default:
                    Button(action: {selected=true}, label: {
                        
                        
                        Certfcate().scaledToFit() .frame(width: 500 ,height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))                                            .overlay(
                                Rectangle()
                                    .fill(Color.black.opacity(0.5))
                                    .overlay(
                                        Image(systemName: "lock")
                                            .resizable()
                                            .frame(width: 36.0, height: 43.0)
                                            .padding(.trailing,250)
                                            .padding(.top,100)
                                    )
                            )

                    }) .disabled(lock==3)
                }
            }.padding(.horizontal, 30.0)
//            .sheet(isPresented: $selected){
//
//                ZStack{
//                    Color.black.opacity(0.9)
//                    ImageView(selected: $selected)
//
//                }.background(BackgroundClearView())
//                    .presentationDetents([.large])
//           }
            }
        }
    }
    
    
    struct BackgroundClearView:UIViewRepresentable
    {
        func makeUIView(context: Context) -> some UIView {
            let view = UIView()
            DispatchQueue.main.async {
                view.superview?.superview?.backgroundColor = .clear
            }
            return view
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
            
        }
    }
    struct test_Previews: PreviewProvider {
        static var previews: some View {
            test()
        }
    }
    }

