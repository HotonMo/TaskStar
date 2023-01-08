//
//  EnterPage.swift
//  TaskStar
//
//  Created by amalghurm on 18/06/1444 AH.
//

import SwiftUI

struct EnterPage: View {
    @State private var isPresented = false
    @State var name: String = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    
                    Image("small").ignoresSafeArea()
                    Text(" Welcome what is your name ?").font(.largeTitle).foregroundColor(Color.black).padding(.bottom,800)
                    TextField("Name", text: $name).accessibilityHint(Text("enter your name"))
                    
                        .ignoresSafeArea(.keyboard).foregroundColor(.black).font(.title).multilineTextAlignment(.center).padding(.bottom,650)
                    NavigationLink(destination:
                                    First_veiw_(),label:{ Text("Next")}).navigationBarBackButtonHidden(true)
                    
                    .disabled(name.isEmpty)
                    .foregroundColor(buttonColor)
                    
                    .frame(width:192, height: 57)
                    .foregroundColor(.white)
                    .background(Color.ui.red1)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.bottom,450)
                }}.ignoresSafeArea()
        }.accentColor(.black)
            
    }
    var chatMessageIsValid: Bool {
          return name.isEmpty
      }

      var buttonColor: Color {
          return chatMessageIsValid ? .accentColor : .white
      }
}

struct EnterPage_Previews: PreviewProvider {
    static var previews: some View {
        EnterPage()
            
    }
}
