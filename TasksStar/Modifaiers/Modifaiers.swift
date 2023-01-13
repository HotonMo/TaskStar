//
//  Modifaiers.swift
//  TasksStar
//
//  Created by hoton on 19/06/1444 AH.
//

import Foundation
import SwiftUI


struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        let Colors : [Color] =  [Color("List0"),Color("List1"),Color("List2"),Color("List3"),Color("List4")]
        content
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Colors.randomElement())
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            .padding(.horizontal ,40)
            .padding(.vertical ,20)
        
    }
    
}


struct MainCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        
        content
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color("mainCardColor"))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            .padding(.all, 40)
            .padding(.bottom, 15)
        
    }
    
}



