//
//  ImageView.swift
//  TasksStar
//
//  Created by hoton on 21/06/1444 AH.
//

import SwiftUI

struct ImageView: View {

        //
        //  ImageView.swift
        //  TaskStar
        //
        //  Created by amalghurm on 16/06/1444 AH.
        //

            @State private var return1 = false
            @Binding var selected: Bool
            @Environment(\.dismiss) var dismiss
            @Environment(\.presentationMode) var presentationMode
            var body: some View {
                NavigationStack{
                    ZStack{
                        Image("certifcateBackground").resizable()
                            .ignoresSafeArea()
                        Color.black.opacity(0.3).ignoresSafeArea()
        //                Color.black.ignoresSafeArea().opacity(0.2)
                        Certfcate()
                    
                        
                    }  .navigationBarItems(leading:
                                            Button{
                                                    return1.toggle()
                                                    self.presentationMode.wrappedValue.dismiss()
                                                }
                                            
                                                                     label:{  Image(systemName: "xmark.circle").resizable().foregroundColor(Color.black).frame(width: 58.0, height: 58.0)
                                            
                                                }
        //                Button(action: {
        //                 Achivment_()
        //                }, label: {
        //                    Image(systemName: "xmark.circle").resizable().foregroundColor(Color.black).frame(width: 58.0, height: 58.0)
        //
        //                })
                           
                    )
                }
            }
        }
        //    .navigationBarItems( leading: Button{
        //        isShowingHOME.toggle()
        //        self.presentationMode.wrappedValue.dismiss()
        //    }
        //
        //                         label:{  Image(systemName: "xmark.circle").resizable().foregroundColor(Color.black).frame(width: 58.0, height: 58.0)
        //
        //    })
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(selected: Binding<Bool>.constant(true))
    }
}
