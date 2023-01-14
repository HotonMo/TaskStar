//
//  Achivment .swift
//  TaskStar
//
//  Created by amalghurm on 15/06/1444 AH.
//

import SwiftUI

struct Achivment_: View {
    
    @State private var selected: Bool = false
    var starS: Int = 200
    var scoreON: Int = 10
    @State private var lock = 3
    var body: some View {
      
            NavigationStack{
                ZStack
                {
                    Image("CBG").resizable()
                        .ignoresSafeArea()
                    
                    
                    ZStack(alignment:.leading ){
                        HStack(alignment:.center, spacing:20){
                                                    Image("medal1")
                                              HStack{
                                                  Text("\(starS) ").accessibilityValue(Text(String(starS)))
                                                Text("Star")
                                
                                                    } }
                                                    .font(.title)
                                                    .foregroundColor(Color.black)
                                                    .frame(width: 324, height: 100.0)
                                                    .background(Rectangle().fill(Color.ui.yellow1))
                        
                                            }.padding(.bottom,900)
                    //عشان احط مسافه بين السكور والشهايد
                    ScrollView(.horizontal){ HStack(spacing:30){
                        
                        switch starS {
                        case _ where  starS > 99 :
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
                                                    .frame(width:100, height: 100)
                                                    .padding(.trailing,300)
                                                    .padding(.top,200)
                                            )
                                    )

                            }) .disabled(lock==3)
                        }
                switch starS {
                case _ where  starS > 199 :
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
                                            .frame(width:100, height: 100)
                                            .padding(.trailing,300)
                                            .padding(.top,200)
                                    )
                            )

                    }) .disabled(lock==3)
                }
                switch starS {
                case _ where  starS > 299 :
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
                                            .frame(width:100, height: 100)
                                            .padding(.trailing,300)
                                            .padding(.top,200)
                                    )
                            )

                    }) .disabled(lock==3)
                }
                switch starS {
                case _ where  starS > 399 :
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
                                            .frame(width:100, height: 100)
                                            .padding(.trailing,300)
                                            .padding(.top,200)
                                    )
                            )

                    }) .disabled(lock==3)
                }
                    }.padding(.all,30)
                        .frame(height: 450.0)}
//                    .sheet(isPresented: $selected){
//
//                        ZStack{
//                            Color.white.opacity(0.3).edgesIgnoringSafeArea(.bottom)
//                            ImageView(selected: $selected)
//
//                        }.background(BackgroundClearView())
//                            .presentationDetents([.fraction(0.5),.fraction(0.7)])
//                        }
                    .fullScreenCover(isPresented: $selected){
                        //.sheet(isPresented: $showingDetaill){
                       
                            ImageView(selected: Binding<Bool>.constant(true))
                    }
                   
//                 if(selected==true){
//                     ImageView(selected: Binding<Bool>.constant(true))
//                 }
//
//                    .padding(.bottom,400)// عشان ارفع السكور والشهايد على فوق
//
                    
                       
                
                
            }
        }
    }
}
// حق ستركت الشيت للباكقراوند   .background(BackgroundClearView()).presentationDetents([.large])
extension Color {
    static let ui = Color.UI()
    
    struct UI {
         let yellow1 = Color("Starset")
        let red1 = Color("button1")
        let yellow2 = Color("certit")
        let gray1 = Color("browntit")
    }
}

struct Achivment__Previews: PreviewProvider {
    static var previews: some View {
        Achivment_()
            
        
    }
}