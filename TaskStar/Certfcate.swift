//
//  Certfcate.swift
//  TaskStar
//
//  Created by amalghurm on 15/06/1444 AH.
//

import SwiftUI

struct Certfcate: View {
    @State private var zoomed = false
    @State private var selected: Bool = false
    @State private var scale = 1.0
    @State private var expand = false
    @State private var isExpanded = false
    @State private var disabled = true
    //@Binding"
    var name: String = "Ahmed"
    var body: some View {
        ZStack{
         
           
              
        
                    Image("Cer1")
                        .resizable()
                        .frame(width: 600 ,height: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
          
            VStack(alignment:.center){
                Text("Task Star Certificate").font(.custom("BM HANNA", size: 50)).foregroundColor(Color.ui.yellow2).position(x:300,y:50)
                HStack{
                    Text("Presented to:").font(.custom("BM HANNA", size: 45)).foregroundColor(Color.ui.gray1.opacity(0.6)).position(x:180,y:50)
                    Text("\(name)").font(.custom("BM HANNA", size: 35)).foregroundColor(Color.ui.gray1.opacity(0.6)).position(x:70,y:50)
                }
                Text("Congratulations").font(.custom("B de bonita regular", size: 70)).fontWeight(.bold).foregroundColor(Color.ui.yellow1).position(x:200,y:50)
                Text("for successfully ").font(.custom("BM HANNA", size: 45)).foregroundColor(Color.ui.gray1.opacity(0.6)).position(x:180,y:50)
                Text("collecting").font(.custom("BM HANNA", size: 45)).foregroundColor(Color.ui.gray1.opacity(0.6)).position(x:180,y:30)
                Text("100").font(.custom("BM HANNA", size: 43)).foregroundColor(Color.ui.yellow1).position(x:180,y:20)}.frame(width: 600.0, height: 400.0)
                 
               
                  
                    
                
            
           
        }.frame(width: 600.0, height: 400.0)}
    init(){
        for familyName in  UIFont.familyNames{
            print(familyName)
            for fontName in  UIFont.fontNames(forFamilyName: familyName){
                print("---- \(fontName)")
            }
        }
    }
}

struct Certfcate_Previews: PreviewProvider {
    static var previews: some View {
        Certfcate()
    }
}
