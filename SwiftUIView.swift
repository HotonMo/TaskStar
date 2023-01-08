//
//  SwiftUIView.swift
//  TaskStar
//
//  Created by amalghurm on 18/06/1444 AH.
//

import SwiftUI

struct SwiftUIView: View {
    var names : [String] = ["1", "2" ,"3","4","5","6","7","8","9"]
    var colors: [Color] = [.red, .gray, .green, .yellow, .blue].shuffled()
    var body: some View {
        
        HStack{
            ForEach(Array(names.enumerated()), id: \.offset) { index, element in
                Text(element)
                    .background(colors[safe: index] ?? colors[safe: index - colors.count])
            }
        }
    }
   
}
extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
        }
    }

