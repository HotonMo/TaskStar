//
//  ColorsViewModel.swift
//  TasksStar
//
//  Created by hoton on 21/06/1444 AH.
//

import Foundation
import SwiftUI

class ColorsViewModel : ObservableObject {

    @AppStorage("colorind") var ColorIndex = 0
//    var colors : [Color] =  [Color("List0"),Color("List1"),Color("List2"),Color("List3"),Color("List4")]
   // var colors : [Color] =  [.gray,.blue]
    
    
    init(ColorIndex: Int = 0) {
        
        if(ColorIndex < 4)
        {
            self.ColorIndex += 1
       
        }
        else {
            self.ColorIndex = 0
        }
    }

      
    }
//    func IndexOfColor(){
//
//        if(ColorIndex < 4)
//        {
//            ColorIndex += 1
//            print(ColorIndex)
//            print(colors[ColorIndex])
//        }
//        else {
//            ColorIndex = 0
//        }
//    }
//
//        func ColorOfCards() -> Color {
//            return colors[ColorIndex]
//        }
//    }
//
