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
            ZStack{
                Image("EnterPage_Background")
                    .resizable()
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 50){
                    Text(" Welcome what is your name ?")
                        .font(.largeTitle)
                    TextField("Name", text: $name).accessibilityHint(Text("enter your name"))
                        .font(.title).multilineTextAlignment(.center)

                    NavigationLink(destination:
                                    FirstPage(),label:{ Text("Next")}).navigationBarBackButtonHidden(true)
                        .disabled(name.isEmpty)
                        .foregroundColor(buttonColor)
                        .frame(width:192, height: 57)
                        .foregroundColor(.white)
                        .background(Color("MainButton"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .padding(.bottom,450)
                }.position(.init(x: 500, y: 550))
                .ignoresSafeArea(.keyboard)
            }
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
